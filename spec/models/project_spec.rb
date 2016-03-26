require 'rails_helper'

RSpec.describe Project, type: :model do
  #### Factories ####
  it { expect(build(:project)).to be_valid }
  it { expect(create(:project)).to be_valid }

  #### Validations ####
  it { is_expected.to validate_presence_of(:body) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:title) }

  #### Associations ####
  it { is_expected.to have_and_belong_to_many(:languages) }
  it { is_expected.to have_and_belong_to_many(:devices) }
  it { is_expected.to have_one(:color_set) }
end
