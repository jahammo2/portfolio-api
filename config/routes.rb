Rails.application.routes.draw do
  mount_devise_token_auth_for 'Admin', at: 'api/auth'
  namespace :api, defaults: { format: :json } do
  end
end
