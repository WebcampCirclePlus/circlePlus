class Admins::OrdersController < ApplicationController
before_action :authenticate_admin!

  def index
    @orders1 = Order.where(status: "準備中")
    @orders2 = Order.where(status: "発送中")
    @orders3 = Order.where(status: "発送完了")
    @items = Item.where(["stock < ? and item_show_flg = ?",51,true])
  end

  def update
    order = Order.find(params[:id])
    if order.status == "準備中"
      order.status = 2
      order.update(order_update_params)
      redirect_to admins_orders_path
    elsif order.status == "発送中"
      order.status = 3
      order.update(order_update_params)
      redirect_to admins_orders_path
    else
      render :index
    end
  end


  private
  def order_update_params
    params.fetch(:order,{}).permit(:status)
  end

end
