Cloudinary.config do |config|
  config.cloud_name = Rails.application.secrets[:cloudinary][:cloud_name]
  config.api_key = Rails.application.secrets[:cloudinary][:api_key]
  config.api_secret = Rails.application.secrets[:cloudinary][:api_secret]
end
