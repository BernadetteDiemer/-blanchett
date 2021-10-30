Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/user_information/:id', to: 'pages#user_profile', as: "profile"
  patch '/user_information/:id', to: 'pages#update', as: "profile_update"
  resources :bookings, only: :index

  resources :art_services do
    resources :bookings, only: [:new, :create, :update, :destroy]
  end

  patch 'bookings/:id/update_status', to: 'bookings#update_status', as: "update_status"



end
