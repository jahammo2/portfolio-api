class BioSerializer < BaseSerializer
  attributes :body,
             :email,
             :phone_number,
             :name

  attribute :resume do
    object.resume.try(:url)
  end

  attribute :background_image do
    object.background_image.try(:url)
  end

  attribute :profile_picture do
    object.profile_picture.try(:url)
  end
end
