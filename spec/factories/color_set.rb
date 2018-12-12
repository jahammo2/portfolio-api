FactoryBot.define do
  factory :color_set do
    background { Faker::Color.hex_color }
    button { Faker::Color.hex_color }
    circle { Faker::Color.hex_color }
    logo_background { Faker::Color.hex_color }
    logo_title { Faker::Color.hex_color }
    button_text { Faker::Color.hex_color }
    button_hover { Faker::Color.hex_color }
    text { Faker::Color.hex_color }
    project_id { 1 }
  end
end
