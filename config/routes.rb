Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bookings, only: :index

  resources :art_services do
    resources :bookings, only: [:new, :create]
  end
end
