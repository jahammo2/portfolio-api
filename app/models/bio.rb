class Bio < ActiveRecord::Base
  mount_uploader :background_image, ImageUploader
  mount_uploader :profile_picture, ImageUploader
  mount_uploader :resume, FileUploader

  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :body, presence: true
end
