class MenusController < ApplicationController

  def index
    @menus = Menu.includes(:user).order('created_at DESC')
  end

  def show
    @menu = Menu.find(params[:id])
  end

  
end
