class OrdersController < ApplicationController
  before_action :set_menu

  
  def index
    @order_seat = OrderSeat.new
  end

  def create
    @order_seat = OrderSeat.new(seat_params)
    if @order_seat.valid?
      @order_seat.save
    else
      render :index
    end
  end

 


  private

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  def seat_params
    params.require(:order_seat).permit(:seat).merge(menu_id: params[:menu_id])
  end



end
