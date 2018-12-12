require_relative "./helpers/file_upload"

include Helpers::FileUpload # rubocop:disable Style/MixinUsage

FactoryBot.define do
  factory :bio do
    body { Faker::Lorem.paragraph }
    title { Faker::Lorem.sentence }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.phone_number }
    name { Faker::Company.name }
    background_image { get_uploaded_file("spec", "images", "food-01.png") }
    profile_picture { get_uploaded_file("spec", "images", "food-01.png") }
    resume { get_uploaded_file("spec", "images", "resume.pdf") }
  end
end
