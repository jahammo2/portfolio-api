FactoryBot.define do
  factory :language do
    title { Faker::Company.buzzword }
  end
end
