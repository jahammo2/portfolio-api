FactoryGirl.define do
  factory :project do
    github_page_url Faker::Internet.url
    web_page_url Faker::Internet.url
    title { Faker::Company.name }
    opening_body { Faker::Lorem.paragraphs }
    closing_body { Faker::Lorem.paragraphs }
    description { Faker::Lorem.paragraph }
    date_deployed "2016-03-13"
    featured false
    header_image { Rack::Test::UploadedFile.new(File.join(Rails.root.join('spec', 'images', 'food-01.png'))) }
    logo { Rack::Test::UploadedFile.new(File.join(Rails.root.join('spec', 'images', 'food-01.png'))) }
  end

  trait :with_color_set do
    after(:create) do |project|
      project.reload
      FactoryGirl.create(
        :color_set,
        project: project
      )
    end
  end

  trait :with_languages do
    after(:create) do |project|
      project.reload
      FactoryGirl.create_list(
        :language,
        2,
        projects: [project]
      )
    end
  end

  trait :with_device do
    after(:create) do |project|
      project.reload
      FactoryGirl.create_list(
        :device,
        4,
        featured: false,
        projects: [project]
      )
    end
  end

  trait :with_featured_device do
    after(:create) do |project|
      project.reload
      FactoryGirl.create(
        :device,
        featured: true,
        projects: [project]
      )
    end
  end

  trait :with_all_properties do
    with_languages
    with_device
    with_featured_device
    with_color_set
  end
end
