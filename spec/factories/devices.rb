FactoryGirl.define do
  factory :device do
    title { Faker::Company.buzzword }
    featured false

    after(:create) do |device|
      device.reload
      FactoryGirl.create(
        :screenshot,
        device: device
      )
    end
  end
end
