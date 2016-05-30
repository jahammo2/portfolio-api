FactoryGirl.define do
  factory :color_set do
    background { Faker::Color.hex_color }
    button { Faker::Color.hex_color }
    circle { Faker::Color.hex_color }
    project_id 1
  end
end
