class OrdersController < ApplicationController
before_action :authenticate_user!

  def new
    @order = Order.new
  end

  def create
    order = Order.new(order_params)
    order.user_id = current_user.id
    order.status = 1
    if order.save
      current_user.cart_items.each do |ci|
        if ci.item_cart_counted >= ci.item.stock
          sum = cart_item.item.stock
          cart_item.update(item_cart_counted: sum)
          flash.now[:countedupdate] = "在庫数量との関係により、カート内商品個数を修正しました。"
        end
        if ci.item.item_show_flg == false
          ci.destroy
          flash[:cartitemdestroy] = "取り扱いが停止された商品をカートから削除しました。"
          redirect_to cart_path
        end
         if cart_item.item.stock == 0
        cart_item.destroy
        flash[:counteddestroy] = "在庫数が0の商品をカートから削除しました。"
        redirect_to cart_path
        end
        order_item = OrderItem.new(order_item_params)
        order_item.order_id = order.id
        order_item.item_id = ci.item_id
        order_item.item_order_counted = ci.item_cart_counted
        item = ci.item
        stock_minus = item.stock - ci.item_cart_counted
        order_item.item_order_price = item.item_price_tax_free
        item.update(stock: stock_minus)
        ci.destroy
        order_item.save
      end
      redirect_to thanks_path
    else
      render :new
    end
  end

	private
  def order_params
    params.require(:order).permit(:user_id, :order_sending_str, :order_sending_postal_code, :status)
  end

  def order_item_params
    params.fetch(:order_item, {}).permit(:order_id, :item_id, :item_order_counted, :item_order_price)
  end
end
