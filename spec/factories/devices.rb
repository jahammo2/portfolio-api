FactoryGirl.define do
  factory :device do
    title ['laptop', 'mobile', 'tablet'].sample
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
