Rails.application.routes.draw do
  devise_for :users
  root 'logbooks#index'
  get 'users/:user_id/areas/:area_id/index', to: 'users#index'
  resources :users, only: [:edit, :update, :show]
  resources :areas, only: [:new, :create] do
    resources :conditions, only: [:new, :create]
    resources :items,      only: [:new, :create]
    resources :logbooks,   only: [:index, :new, :create]
  end
end