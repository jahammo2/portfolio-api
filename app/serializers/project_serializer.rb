class ProjectSerializer < BaseSerializer
  attributes :github_page_url,
             :web_page_url,
             :title,
             :description,
             :opening_body,
             :closing_body,
             :date_deployed,
             :featured

  attribute :header_image do
    object.header_image.try(:url)
  end

  attribute :logo do
    object.logo.try(:url)
  end

  has_one :color_set
  has_many :languages
  has_many :devices
end
