class CartItemsController < ApplicationController
  def index
  	@cart_items = current_user.cart_items
  	@sum = 0
  	@cart_items.each do |cart_item|
  		@price = cart_item.item.item_price_tax_free * cart_item.item_cart_counted
  		@sum += @price
  	end
<<<<<<< HEAD
<<<<<<< HEAD
    @cart_item = current_user.cart_items
  end

def update
    cart_item = CartItem.find(params[:id])
    if current_user.id = cart_item.user_id
    cart_item.update(cart_item_params)
    redirect_to cart_path(current_user)
  else
    render :index
=======
=======
>>>>>>> 9df3aa59b590a2fafd25fc642818944892781394
  end

  def create
    item = Item.find(params[:item_id])
    cart_item = CartItem.new(ci_update_params)
    cart_item.user_id = current_user.id
    cart_item.item_id = item.id
    if cart_item.save
    redirect_to cart_path
  else
    redirect_to item_path(item)
  end
  end

  def update
  	cart_item.update
<<<<<<< HEAD
>>>>>>> 11e79ed477d192880de26a5d370270ee6ded9546
=======
>>>>>>> 9df3aa59b590a2fafd25fc642818944892781394
  end
end

  private
<<<<<<< HEAD
<<<<<<< HEAD
  def cart_item_params
    params.require(:cart_item).permit(:item_cart_counted)
=======
  def ci_update_params
    params.require(:cart_item).permit(:user_id, :item_id, :item_cart_counted)
>>>>>>> 11e79ed477d192880de26a5d370270ee6ded9546
=======

  def ci_update_params
    params.require(:cart_item).permit(:user_id, :item_id, :item_cart_counted)
>>>>>>> 9df3aa59b590a2fafd25fc642818944892781394
  end

end
