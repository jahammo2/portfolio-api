require_relative "./helpers/file_upload"

include Helpers::FileUpload # rubocop:disable Style/MixinUsage

FactoryBot.define do
  factory :screenshot do
    caption { Faker::Lorem.paragraph }
    device

    image { get_uploaded_file("spec", "images", "food-01.png") }
  end
end
