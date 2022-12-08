Rails.application.routes.draw do
  get 'products/add_to_cart/:id', to: 'products#add_to_cart', as: 'add_to_cart'
  delete 'products/remove_from_cart/:id', to: 'products#remove_from_cart', as: 'remove_from_cart'

  resources :categories
  root :to => 'store#index', :via => :get
  get 'store/:id' => 'store#show', :as => :store_product, :via => :get

  get 'search' => 'store#search', :as => 'search', :via => :get
  get 'search_results' => 'store#search_results', :as => 'search_results', :via => :post
  get 'about' => 'products#about'

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
