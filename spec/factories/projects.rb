FactoryGirl.define do
  factory :project do
    github_page_url Faker::Internet.url
    web_page_url Faker::Internet.url
    title Faker::Company.catch_phrase
    body Faker::Company.catch_phrase
    description Faker::Company.buzzword
    date_deployed "2016-03-13"
  end

  trait :with_color_set do
    after(:create) do |project|
      project.reload
      FactoryGirl.create(
        :color_set,
        project: project,
        background: 'red'
      )
    end
  end

  trait :with_languages do
    after(:create) do |project|
      project.reload
      FactoryGirl.create_list(
        :language,
        2,
        projects: [project],
        title: Faker::Company.buzzword
      )
    end
  end

  trait :with_devices do
    after(:create) do |project|
      project.reload
      FactoryGirl.create_list(
        :device,
        2,
        projects: [project],
        title: Faker::Company.buzzword
      )
    end
  end

  trait :with_all_properties do
    with_languages
    with_devices
    with_color_set
  end
end
