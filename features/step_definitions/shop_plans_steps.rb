Given("shop health plans exist for both last and this year") do
  year = (Date.today + 2.months).year
  plan = FactoryGirl.create :plan, :with_premium_tables, active_year: year, market: 'shop', coverage_kind: 'health', deductible: 4000
  plan2 = FactoryGirl.create :plan, :with_premium_tables, active_year: (year - 1), market: 'shop', coverage_kind: 'health', deductible: 4000, carrier_profile_id: plan.carrier_profile_id
end

Given("vertical and horizontal plan choices are offered") do
  allow(Config::AcaHelper).to receive(:offers_single_carrier?).and_return(true)
  allow_any_instance_of(Config::AcaHelper).to receive(:offers_single_carrier?).and_return(true)
  allow(Config::AcaHelper).to receive(:offers_metal_level?).and_return(true)
  allow_any_instance_of(Config::AcaHelper).to receive(:offers_metal_level?).and_return(true)
  allow(Config::AcaHelper).to receive(:offers_sole_source?).and_return(false)
  allow_any_instance_of(Config::AcaHelper).to receive(:offers_sole_source?).and_return(false)
end

Given('only sole source plans are offered') do
  allow(Config::AcaHelper).to receive(:offers_single_carrier?).and_return(false)
  allow_any_instance_of(Config::AcaHelper).to receive(:offers_single_carrier?).and_return(false)
  allow(Config::AcaHelper).to receive(:offers_metal_level?).and_return(false)
  allow_any_instance_of(Config::AcaHelper).to receive(:offers_metal_level?).and_return(false)
  allow(Config::AcaHelper).to receive(:offers_sole_source?).and_return(true)
  allow_any_instance_of(Config::AcaHelper).to receive(:offers_sole_source?).and_return(true)
end
