FactoryGirl.define do
  factory :bio do
    body { Faker::Lorem.paragraph }
    title { Faker::Lorem.sentence }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.phone_number }
    name { Faker::Company.name }
    background_image { Rack::Test::UploadedFile.new(File.join(Rails.root.join('spec', 'images', 'food-01.png'))) }
    profile_picture { Rack::Test::UploadedFile.new(File.join(Rails.root.join('spec', 'images', 'food-01.png'))) }
    resume { Rack::Test::UploadedFile.new(File.join(Rails.root.join('spec', 'images', 'resume.pdf'))) }
  end
end
