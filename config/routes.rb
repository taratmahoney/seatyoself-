Rails.application.routes.draw do

  resources :sessions, only:[:new, :create, :destroy]

  resources :restaurants 
  resources :users, only:[:new, :create]
end
