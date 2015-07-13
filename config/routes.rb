Rails.application.routes.draw do
  resources :users
  resources :session, :only => [:new, :create, :destroy]
end
