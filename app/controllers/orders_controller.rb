class OrdersController < ApplicationController
  def new
  	@sending = Sending.new
  	@s_number = 0
  end

  def create
  end

  def sending_create
  	sending = Sending.new(sending_params)
    sending.user_id = current_user.id
  	if sending.save
  		redirect_to new_user_order_path(current_user.id)
  	else
  		render:index
  	end
  end

  def edit
    @order = Order.find(params[:id])
    @sum = 0
    @order.order_items.each do |order|
      p = order.item_order_counted * order.item_order_price
      @sum += p
    end
  end

  def update

  end

	private
  def sending_params
  	params.require(:sending).permit(:sending_code, :sending_name, :sending_address,:user_id)
  end

end
