Rails.application.routes.draw do
  get 'outfits/index'
  get 'outfits/show'
  get 'outfits/new'
  get 'outfits/create'
  get 'outfits/edit'
  get 'outfits/update'
  get 'outfits/destroy'
  devise_for :users
  root to: "outfits#index"
  resources :outfits
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
