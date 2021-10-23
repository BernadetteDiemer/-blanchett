Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  get '/art_services', to: 'art_services#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :art_services do
    resources :bookings, only: [:show, :new, :create]
  end
  resources :bookings, only: [:new, :create]
  resources :art_services


end
