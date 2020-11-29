Rails.application.routes.draw do
  get 'conditions/new'
  devise_for :users
  resources :users, only: [:edit, :update, :show]
  resources :areas, only: [:new, :create]
end