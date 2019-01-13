FactoryBot.define do
  factory :social_link do
    site { ["linkedin", "twitter", "instagram", "github", "dribbble"].sample }
    url { Faker::Internet.url }
  end
end
