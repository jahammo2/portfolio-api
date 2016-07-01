class ProjectsSerializer < ProjectSerializer
  attribute :featured_screenshot do
    featured_device = object.devices.find_by(featured: true)
    title = nil
    url = nil

    if featured_device
      title = featured_device.title
      url = featured_device.screenshot.image.url
    end

    {
      device: title,
      image: url
    }
  end
end
