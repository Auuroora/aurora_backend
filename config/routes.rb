Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  post '/auth/login', to: 'authentication#login'
  resources :users, defaults: {format: :json}
  resources :posts, defaults: {format: :json}

  get '/*a', to: 'application#not_found'
end
