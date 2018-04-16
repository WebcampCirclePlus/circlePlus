class ItemsController < ApplicationController
  def create
    item = Item.new(items_params)
    item.save
    redirect_to admins_artist_item_path(item)
  end

    private
  def items_params
    params.require(:item).permit(:album_name, :genre_id, :label, :item_price_tax_free, :stock)
  end
end
