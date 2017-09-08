Rails.application.routes.draw do

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"
  
  devise_for :admins
  #get 'welcome#index'
  get 'welcome/update_cities', as: 'update_cities'
  get 'welcome/show'

  get 'dashboard/index', as: 'dashboard'


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
