Rails.application.routes.draw do
  devise_for :users
  root :to => 'sessions#new'

  resources :users
  resources :sessions
  resources :rentals
  resources :reservations
end
