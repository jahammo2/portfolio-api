class Device < ActiveRecord::Base
  has_and_belongs_to_many :projects
  has_one :screenshot

  validates :title, presence: true

  accepts_nested_attributes_for :screenshot, allow_destroy: true
end
