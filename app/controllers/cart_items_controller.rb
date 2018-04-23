class CartItemsController < ApplicationController
  def index
  	@cart_items = current_user.cart_items
  	@sum = 0
  	@cart_items.each do |cart_item|
  		@price = cart_item.item.item_price_tax_free * cart_item.item_cart_counted
  		@sum += @price
  	end

  end

  def update
  	cart_item.update

  end



end
