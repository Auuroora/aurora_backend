Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get '/package_page' => 'application#package_page'
  get '/user/my' => 'users#show'
  get '/search' => 'home#search'
  get '/mypost' => 'home#my_post'
  get '/myfilter' => 'home#my_filter'
  post '/auth/login', to: 'authentication#login'
  resources :users, defaults: {format: :json}
  resources :posts, defaults: {format: :json}
  resources :filters, defaults: {format: :json}
  resources :likes
  resources :follows
  resources :comments
  resources :payments do
    collection do
      get :complete
    end
  end
  get '/*a', to: 'application#not_found'
end
