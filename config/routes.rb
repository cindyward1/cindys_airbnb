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
  scope :landlord do
    get '/', to: 'rentals#new', as: 'landlord_return_to'
  end
  scope :renter do
    get '/', to: 'reservations#new', as: 'renter_return_to'
  end
  resources :users, concerns: :opinions_about
end
