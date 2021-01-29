Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users
  resources :map
  resources :tmarts do
    resources :orders, only:[:index, :create]
  end
end