Rails.application.routes.draw do
  devise_for :users
  root to: "outfits#index"
  resources :outfits do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
