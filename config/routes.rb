Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :update, :show]
  resources :areas, only: [:new, :create]
end