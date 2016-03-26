class Project < ActiveRecord::Base
  mount_uploader :carousel_images, ImageUploader

  has_and_belongs_to_many :languages
  has_and_belongs_to_many :devices
  has_one :color_set

  validates :body, presence: true
  validates :description, presence: true
  validates :title, presence: true
  validate :date_deployed_in_past

  private

  def date_deployed_in_past
    if date_deployed.present? && date_deployed > Date.today
      errors.add(:date_deployed, "can't be in the future")
    end
  end
end
