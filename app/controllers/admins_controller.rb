class AdminsController < ApplicationController
  def stock
    @items = Item.all
  end

  def status
    @orders = Order.all
  end
end
