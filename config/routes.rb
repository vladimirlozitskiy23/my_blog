Rails.application.routes.draw do
  devise_for :users
  # root to: "home#index"
  root to: "articles#index"
  resources :articles, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
