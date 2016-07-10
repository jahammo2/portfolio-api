FactoryGirl.define do
  factory :social_link do
    site ['linkedin', 'twitter', 'instagram', 'github'].sample
    url { Faker::Internet.url }
  end
end
