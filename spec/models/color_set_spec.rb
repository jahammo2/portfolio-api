require "rails_helper"

RSpec.describe ColorSet, type: :model do
  #### Factories ####
  it { expect(build(:color_set)).to be_valid }
  it { expect(create(:color_set)).to be_valid }

  #### Associations ####
  it { is_expected.to belong_to(:project) }
end
