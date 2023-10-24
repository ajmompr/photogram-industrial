Rails.application.routes.draw do
  # root_url
  root "photos#index"

  devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

end
