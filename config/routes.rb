Rails.application.routes.draw do
  devise_for :users
  root to: 'tmarts#index'
  resources :users
  resources :tmarts
end