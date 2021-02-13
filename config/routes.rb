Rails.application.routes.draw do

  devise_for :users
  root to:'users#index'
  resource :menus
  resource :users
end
