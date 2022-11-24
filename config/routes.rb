Rails.application.routes.draw do
  resources :categories
  root :to => 'store#index', :via => :get
  match 'store/:id' => 'store#show', :as => :store_product, :via => :get

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
