class ImageUploader < CarrierWave::Uploader::Base
  if Rails.env.in? %w(development test)
    storage :file

    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  else
    include Cloudinary::CarrierWave
  end
end
