class Project < ActiveRecord::Base
  mount_uploader :carousel_images, ImageUploader

  has_and_belongs_to_many :languages
  has_and_belongs_to_many :devices
  has_many :colors

  validates :body, presence: true
  validates :description, presence: true
  validates :title, presence: true
end
