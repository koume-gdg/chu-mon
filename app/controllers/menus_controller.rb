class MenusController < ApplicationController

  def index
    @menus = Menu.includes(:user).order('created_at DESC')
  end
  
end
