Rails.application.routes.draw do
  get 'search/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # root to: "home#index"
  root to: "articles#index"
  resources :articles, only: [:index, :show]
  get 'search', to: 'search#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
