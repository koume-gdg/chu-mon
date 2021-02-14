Rails.application.routes.draw do

  devise_for :users
  root to:'users#index'
  resources :menus do
    resources :order, only: [:index, :create]
  resources :users
end
