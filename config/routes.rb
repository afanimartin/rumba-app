Rails.application.routes.draw do
  root "welcome#index"

  devise_for :users, :controllers => {
    registrations: "registrations"
  }

  resources :users

  resources :restaurants

  resources :locations

  resources :categories

  resources :products

  resources :orders

  resources :carts

  resources :checkouts
  
end
