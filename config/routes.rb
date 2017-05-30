Rails.application.routes.draw do
  resources :cities
  resources :departaments
  resources :countries
  ##devise_for :users, path: '', controllers: {sessions: 'users'}
  devise_for :users
  
  #devise_scope :users do
  #  root "sessions#new"
  #end

  #post
  #put
  #delete
  #patch
 
  resources :clients
  # devise_for :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
