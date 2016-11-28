
require File.join(Rails.root, "lib/mongoid_migration_task")

class ChangePlanYearEffectiveDate < MongoidMigrationTask
  def migrate
    begin
      organizations = Organization.where(fein: ENV['fein'])
      state = ENV['aasm_state'].to_s
      start_on = Date.strptime((ENV['py_new_start_on']).to_s, "%m/%d/%Y")
      hios_id = ENV['referenece_plan_hios_id']
      if organizations.size !=1
        raise 'Issues with fein'
      end
      open_enrollment_start_on = (start_on - 30).beginning_of_month
      plan_year = organizations.first.employer_profile.plan_years.where(aasm_state: state).first
      plan_year.update_attributes(start_on: start_on, end_on: start_on + 1.year - 1.day, open_enrollment_start_on: open_enrollment_start_on, open_enrollment_end_on: open_enrollment_start_on + 15.days)
      puts "Changing Plan Year effective on to #{start_on}" unless Rails.env.test?
      if hios_id.present?
        plan_year.benefit_groups.each do |benefit_group|
          benefit_group.reference_plan = Plan.where(:hios_id => hios_id).first
          benefit_group.elected_plans = benefit_group.elected_plans_by_option_kind
          puts "Changed reference plan id " unless Rails.env.test?
        end
      end
      if plan_year.save!
        puts "Plan Year Saved!!" unless Rails.env.test?
        plan_year.force_publish! if plan_year.may_force_publish?
      else
        puts "#{plan_year.errors.full_messages}" unless Rails.env.test?
      end
    rescue
      puts "Incorrect environment variables"
    end
  end
end
