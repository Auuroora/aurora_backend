Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  post '/auth/login', to: 'authentication#login'
  resources :users, defaults: {format: :json}
  resources :posts, defaults: {format: :json}
  resources :filters, defaults: {format: :json}
  resources :likes
  resources :follows

  get '/*a', to: 'application#not_found'
end
