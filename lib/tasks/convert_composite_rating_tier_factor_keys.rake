namespace :convert_rating_factors do
  desc "fix bad composite rating tier factor key names"
  task :run => :environment do |t|
    COMPOSITE_TIER_TRANSLATIONS = {
      'Employee': 'employee',
      'Employee + Spouse': 'employee_and_spouse',
      'Employee + Dependent(s)': 'employee_and_one_or_more_dependents',
      'Family': 'family'
    }.with_indifferent_access

    CompositeRatingTierFactorSet.all.each do |crt|
      crt.rating_factor_entries.each do |factor_entry|
        factor_entry.factor_key = COMPOSITE_TIER_TRANSLATIONS[factor_entry.factor_key]
        factor_entry.save!
      end
    end
  end
end