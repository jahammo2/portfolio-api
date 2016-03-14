require 'rails_helper'

RSpec.describe Color, type: :model do
  #### Factories ####
  it { expect(build(:color)).to be_valid }
  it { expect(create(:color)).to be_valid }

  #### Associations ####
  it { is_expected.to belong_to(:project) }
end
