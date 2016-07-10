class SocialLink < ActiveRecord::Base
  validates :site, presence: true,
                   uniqueness: true
  validates :url, presence: true
end
