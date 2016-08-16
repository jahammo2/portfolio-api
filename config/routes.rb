Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :api, defaults: { format: :json } do
    resources :projects, only: [:show, :index]
    resources :social_links, path: '/social-links'
    get '/bio', to: 'bio#show', only: [:show, :index]
  end
end
