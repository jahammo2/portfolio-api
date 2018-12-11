Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  namespace :api, defaults: { format: :json } do
    resources :projects, only: %i{show index}
    resources :social_links, path: "/social-links"
    get "/bio", to: "bio#show", only: %i{show index}
  end
end
