Rails.application.routes.draw do
  get 'bookings/new'
  post 'bookings/new'
  get 'flights/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'flights#index'

  resources :bookings, only: [:new, :create, :show]
end
