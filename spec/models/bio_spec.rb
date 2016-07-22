require 'rails_helper'

RSpec.describe Bio, type: :model do
  #### Factories ####
  it { expect(build(:bio)).to be_valid }
  it { expect(create(:bio)).to be_valid }

  #### Validations ####
  it { is_expected.to validate_presence_of(:body) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:phone_number) }
  it { is_expected.to validate_presence_of(:name) }
end
