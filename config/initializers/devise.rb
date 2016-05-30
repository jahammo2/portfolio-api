Devise.setup do |config|
  config.secret_key = Rails.application.secrets[:devise][:secret_key]
  config.mailer_sender = Rails.application.secrets[:devise][:sender_email]
end
