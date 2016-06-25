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

  has_one :color_set
  has_many :languages
  has_many :devices

  def format_name(attribute_name)
    attribute_name.to_s.underscore
  end
end
