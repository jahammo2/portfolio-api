class Screenshot < ActiveRecord::Base
  mount_uploader :image, ScreenshotUploader

  validates :image, presence: true

  belongs_to :device
end
