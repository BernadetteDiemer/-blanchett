Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :pages do
  #   collection :user_profile
  # end
  get '/user_information/:id', to: 'pages#user_profile', as: "profile"
  resources :bookings, only: [:new, :create, :index]
  resources :art_services
end
