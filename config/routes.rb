Rails.application.routes.draw do
  resources :dishes
  resources :instructions
  resources :ingredients
  resources :recipes
  resources :users, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
