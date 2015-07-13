Rails.application.routes.draw do
  root   "home#index", as: :home
  
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
end
