Rails.application.routes.draw do
  devise_for :users
  root 'trips#index'

  resources :trips

  resources :locations do
    resources :addresses
  end

  get '/trip/:id/find_location/:id', to: 'trips#find_location', as: 'find_location'
  patch '/trip/:id/add_location/', to: 'trips#add_location', as: 'add_location'
  patch '/trip/:id/remove_location/:trip_id', to: 'trips#remove_location', as: 'remove_location'

end
