Rails.application.routes.draw do
  resources :images
  devise_for :users do
    resources :favorite_listings, only: [:create, :destroy]
  end
  resources :listings
  root 'listings#index'

  get '/about', to: 'static_pages#about'
  get '/policies', to: 'static_pages#policies'
  get '/utilities', to: 'static_pages#utilities'
  get '/contact', to: 'static_pages#contact'
  get '/users/:id', to: 'users#show', as: 'profile'

  resources :favorite_listings, only: [:create, :destroy]
end
