Rails.application.routes.draw do
  concern :opinions_about do
    resources :comments
  end
  resources :rentals, concerns: :opinions_about
  resources :reservations
  devise_for :users
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  devise_scope :landlord do
    get '/landlord', to: 'rentals#new', as: 'landlord_root'
  end
  devise_scope :renter do
    get '/renter', to: 'reservations#new', as: 'renter_root'
  end
  resources :users, only: [], concerns: :opinions_about
end
