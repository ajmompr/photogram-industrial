Rails.application.routes.draw do
  # root_url
  root "photos#index"
  
  devise_for :users

  get "/users/:id" => "users#show", as: :user

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  resources :users, only: :show

end
