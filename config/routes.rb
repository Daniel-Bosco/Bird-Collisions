Rails.application.routes.draw do
  devise_for :users
  resources :collisions
  resources :data
  resources :weathers
  resources :reports
  resources :flights
  resources :aircrafts
  resources :pilots
  resources :birds
  resources :airports
  resources :cities
  resources :states
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "airports#index"
end
