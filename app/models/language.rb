class Language < ActiveRecord::Base
  has_and_belongs_to_many :projects

  validates :title, presence: true
end
