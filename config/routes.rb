Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  devise_for :users
  root to: 'palaces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :palaces do
    resources :bookings, only: [:new, :create]
  end
end
