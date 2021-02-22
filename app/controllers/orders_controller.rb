class OrdersController < ApplicationController
  before_action :set_menu

  
  def index
    @order_seat = OrderSeat.new
  end

  def create
    @order_seat = OrderSeat.new(seat_params)
    if @order_seat.valid?
      Payjp.api_key = ENV['PAYJP_SECRET_KEY']
      Payjp::Charge.create(
        amount: @menu.price, # 商品の値段
        card: seat_params[:token], # カードトークン
        currency: 'jpy'                 # 通貨の種類（日本円）
      )
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
    params.require(:order_seat).permit(:seat).merge(menu_id: params[:menu_id], token: params[:token])
  end



end
