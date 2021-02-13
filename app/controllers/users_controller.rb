class UsersController < ApplicationController
  #before_action :set_user, only: [:index]
  def index
    @users = User.all.order('created_at DESC')
    
  end

  private


  #def set_user
    #@user = User.find(params[:id])
  #end

end
