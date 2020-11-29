Rails.application.routes.draw do
  devise_for :users
  root 'logbooks#index'
  resources :users, only: [:edit, :update, :show]
  resources :areas, only: [:new, :create]
  resources :logs, only: [:index, :new, :create]
end