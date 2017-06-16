require 'rails_helper'

RSpec.describe RateReference, type: :model do
  subject { RateReference.new }

  it "has a valid factory" do
    expect(create(:rate_reference)).to be_valid
  end

  it { is_expected.to validate_presence_of :zip_code }
  it { is_expected.to validate_presence_of :county_name }
  it { is_expected.to validate_presence_of :rating_region }
  it { is_expected.to validate_presence_of :zip_code_in_multiple_counties }

  context "valididate_uniqueness_of each County / Zip pair" do
    before :all do
      create(:rate_reference, county_name: "County", zip_code: "10000")
    end

    let(:invalid_reference) { build(:rate_reference, county_name: "County", zip_code: "10000") }
    let(:valid_second_reference) { build(:rate_reference, county_name: "Second County", zip_code: '10000') }

    it "does not allow a duplicate reference to be created" do
      expect(invalid_reference.valid?).to be_falsey
      expect(invalid_reference.errors.full_messages.first).to match(/Zip code is already taken/)
    end

    it "allows a new reference in a separate county" do
      expect(valid_second_reference.valid?).to be_truthy
    end
  end

  describe "class methods" do
    subject { RateReference }

    before :all do
      RateReference.destroy_all
    end

    describe "::find_rating_region" do
      context "with a valid search param" do
        let!(:first_county_region) { create(:rate_reference, county_name: "County", zip_code: "10010") }
        let!(:same_county_second_region) { create(:rate_reference, county_name: "County", zip_code: "10020") }

        it "returns the rate reference area" do
          expect(subject.find_rating_region(zip_code: '10010', county_name: 'County')).to match_array([first_county_region])
          expect(subject.find_rating_region(zip_code: '10020', county_name: 'County')).to match_array([same_county_second_region])
        end
      end

      context "with an invalid search" do
        it "returns nil" do
          expect(subject.find_rating_region(zip_code: '00000', county_name: 'County')).to be_nil
        end
      end
    end

    describe "::find_zip_codes_for_county" do
      context "with a valid county" do
        let!(:first_county_region) { create(:rate_reference, county_name: "County", zip_code: "10010") }
        let!(:same_county_second_zip) { create(:rate_reference, county_name: "County", zip_code: "10020") }
      end
      it "returns an array of zip codes" do
        expect(subject.find_zip_codes_for_county(county_name: 'County')).to match_array(%w(10010 10020))
      end

      it "returns an empty array if nothing found" do
        expect(subject.find_zip_codes_for_county(county_name: "Potato")).to match_array([])
      end
    end
  end
end