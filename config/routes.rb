Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get '/package_page' => 'application#package_page'
  get '/payment_complete_page' => 'application#payment_complete_page'
  get '/user/my' => 'users#show'
  get '/mypost' => 'home#my_post'
  get '/myfilter' => 'home#my_filter'
  get '/mylikes' => 'home#my_likes_post'
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
  resources :orders
  resources :line_filters
  resources :reports
  get '/*a', to: 'application#not_found'
end
