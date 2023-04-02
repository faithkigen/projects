Rails.application.routes.draw do
  resources :dishes, only: [:index, :show, :create, :update, :destroy]
  resources :instructions, only: [:index, :show, :create]
  resources :ingredients, only: [:index, :show, :create]
  resources :recipes, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
