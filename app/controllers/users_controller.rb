class UsersController < ApplicationController
  # before_action :set_user, only: [:index]
  def index
    @users = User.all.order('created_at DESC')
  end

  def show
    @user = User.find(params[:id])
  end

  # def set_user
  # @user = User.find(params[:id])
  # end
end
