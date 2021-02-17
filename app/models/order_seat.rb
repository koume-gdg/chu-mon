class OrderSeat
  include ActiveModel::Model
  attr_accessor :seat, :menu_id, :token

  with_options presence: true do
    validates :seat
    #validates :token
    validates :menu_id
  end

  def save
    order = Order.create(menu_id: menu_id)

    Seat.create(seat: seat, order_id: order.id)
  end

end
