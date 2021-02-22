Rails.application.routes.draw do

  devise_for :users
  root to:'users#index'
  resources :menus do
    resources :orders, only: [:index, :create]
  end

  resources :users
end
