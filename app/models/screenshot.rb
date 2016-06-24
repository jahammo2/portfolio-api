class Screenshot < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :image, presence: true

  belongs_to :device
end
