require 'rails_helper'

RSpec.describe SocialLink, type: :model do
  #### Factories ####
  it { expect(build(:screenshot)).to be_valid }
  it { expect(create(:screenshot)).to be_valid }

  #### Validations ####
  it { is_expected.to validate_presence_of(:site) }
  it { is_expected.to validate_uniqueness_of(:site) }
  it { is_expected.to validate_presence_of(:url) }
end
