Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get '/mypage' => 'home#my_page'
  get '/search' => 'home#search'
  get '/mypost' => 'home#my_post'
  get '/myfilter' => 'home#my_filter'
  post '/auth/login', to: 'authentication#login'
  resources :users, defaults: {format: :json}
  resources :posts, defaults: {format: :json}
  resources :filters, defaults: {format: :json}
  resources :likes
  resources :follows

  get '/*a', to: 'application#not_found'
end
