FactoryGirl.define do
  factory :device do
    title { Faker::Company.buzzword }
  end
end
