class CartItemsController < ApplicationController
  def index
  	@cart_items = current_user.cart_items
  	@sum = 0
  	@cart_items.each do |cart_item|
  		@price = cart_item.item.item_price_tax_free * cart_item.item_cart_counted
  		@sum += @price
  	end
    @cart_item = current_user.cart_items
  end

def update
    cart_item = CartItem.find(params[:id])
    if current_user.id = cart_item.user_id
    cart_item.update(cart_item_params)
    redirect_to cart_path(current_user)
  else
    render :index
  end
end

  private
  def cart_item_params
    params.require(:cart_item).permit(:item_cart_counted)
  end

end
