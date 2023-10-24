Rails.application.routes.draw do
  # root_url
  root "photos#index"

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  devise_for :users

end
