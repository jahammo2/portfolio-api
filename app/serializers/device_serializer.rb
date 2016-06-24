class DeviceSerializer < BaseSerializer
  attribute :title

  has_one :screenshot
end
