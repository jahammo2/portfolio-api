require 'rails_helper'

RSpec.describe Screenshot, type: :model do
  #### Factories ####
  it { expect(build(:screenshot)).to be_valid }
  it { expect(create(:screenshot)).to be_valid }

  #### Validations ####
  it { is_expected.to validate_presence_of(:image) }

  #### Associations ####
  it { is_expected.to belong_to(:device) }
end
