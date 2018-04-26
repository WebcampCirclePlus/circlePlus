class OrdersController < ApplicationController
before_action :authenticate_user!

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.status = 1
    if @order.save
      current_user.cart_items.each do |ci|
        order_item = OrderItem.new(order_item_params)
        order_item.order_id = order.id
        order_item.item_id = ci.item_id
        order_item.item_order_counted = ci.item_cart_counted
        item = Item.find_by(params[:item_id])
        order_item.item_order_price = item.item_price_tax_free
        ci.destroy
        order_item.save
      end
      redirect_to thanks_path
    else
      render :new
    end
  end

  # orderのshowを作る。

	private
  def order_params
    params.require(:order).permit(:user_id, :order_sending_str, :order_sending_postal_code)
  end

  def order_item_params
    params.fetch(:order_item, {}).permit(:order_id, :item_id, :item_order_counted, :item_order_price)
  end
end
