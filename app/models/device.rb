class Device < ActiveRecord::Base
  mount_uploader :screenshots, ImageUploader

  has_and_belongs_to_many :projects
  has_one :screenshot

  validates :title, presence: true
end
