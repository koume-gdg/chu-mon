Rails.application.routes.draw do

  root to:'menus#index'
  resource :menus
end
