FactoryGirl.define do
  factory :device do
    title { %w{desktop mobile}.sample }
    featured false

    after(:create) do |device|
      device.reload
      FactoryGirl.create(
        :screenshot,
        device: device
      )
    end
  end

  factory :device_without_screenshots do
    title { %w{desktop mobile}.sample }
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
