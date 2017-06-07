Rails.application.routes.draw do
  resources :type_documents
  devise_for :users
  
  resources :cities
  resources :departments
  resources :countries
  resources :clients
  
  root :to => 'clients#index'
  # devise_for :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
