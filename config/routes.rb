Rails.application.routes.draw do
  devise_for :users
  root to: 'palaces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :palaces do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
end
