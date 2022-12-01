Rails.application.routes.draw do
  resources :categories
  root :to => 'store#index', :via => :get
  get 'store/:id' => 'store#show', :as => :store_product, :via => :get

  get 'search' => 'store#search', :as => 'search', :via => :get
  get 'search_results' => 'store#search_results', :as => 'search_results', :via => :post

  resources :customers
  resources :products
  resources :orders
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
