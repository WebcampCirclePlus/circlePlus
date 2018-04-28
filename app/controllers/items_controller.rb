class ItemsController < ApplicationController
before_action :authenticate_user!, only: [:create]

  def index
    @genres = Genre.all
    @items = Item.where(item_show_flg: true).page(params[:page]).reverse_order
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  def search
    @q = Item.where(item_show_flg: true).ransack(params[:q])
  end

  def search_result
    @q = Item.where(item_show_flg: true).ransack(params[:q])
    @items = @q.result(distinct: true)
  end

    private
  def items_params
    params.require(:item).permit(:album_name, :genre_id, :label, :item_price_tax_free, :stock)
  end
end
