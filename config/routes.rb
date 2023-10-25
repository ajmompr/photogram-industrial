Rails.application.routes.draw do
  # root_url
  root "photos#index"
  
  
  devise_for :users
  
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  # resources :users, only: :show
  
  get ":username" => "users#show", as: :user

  get ":username/liked" => "users#liked", as: :liked_photos


end
