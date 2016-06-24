class ScreenshotSerializer < BaseSerializer
  attribute :caption
  attribute :image do
    object.image.try(:url)
  end
end
