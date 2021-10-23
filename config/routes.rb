Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :art_services, only: [:new, :create, :show]
  resources :bookings, only: [:new, :create]
end
