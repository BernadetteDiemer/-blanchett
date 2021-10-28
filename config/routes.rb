Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bookings, only: [:new, :create, :index]
  resources :art_services do
    resources :reviews, only: [:new, :create, :destroy]
  end
end
