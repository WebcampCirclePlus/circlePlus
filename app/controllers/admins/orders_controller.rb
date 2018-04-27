class Admins::OrdersController < ApplicationController
before_action :authenticate_admin!

  def index
    @orders1 = Order.where(status: 1)
    @orders2 = Order.where(status: 2)
    @orders3 = Order.where(status: 3)
  end

  def update
    order = Order.find(params[:id])
    if order.status == 1
      order.status = 2
      order.update(order_update_params)
      redirect_to admins_orders_path
    elsif order.status == 2
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
