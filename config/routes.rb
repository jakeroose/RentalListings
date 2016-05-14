Rails.application.routes.draw do
  resources :images
  devise_for :users
  resources :listings
  root 'listings#index'
end
