Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :api, defaults: { format: :json } do
    resources :projects
    resources :social_links, path: '/social-links'
    get '/bio', to: 'bio#show'
  end
end
