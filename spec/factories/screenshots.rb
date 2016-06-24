FactoryGirl.define do
  factory :screenshot do
    caption { Faker::Lorem.paragraph }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root.join('spec', 'images', 'food-01.png'))) }
    device
  end
end
