class OrdersController < ApplicationController
  before_action :set_menu

  
  def index
    @order_seat = OrderSeat.new
  end

  def create
  end

  private

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end


end
