class ItemsController < ApplicationController
before_action :authenticate_user!, expect: [:index, :show]

  def create
    item = Item.new(items_params)
    item.save
    redirect_to admins_artist_item_path(item)
  end

  def index
    @genres = Genre.all
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def search
    # @q = Item.search(search_params)
    # @items = @q
      # .result
      # .order(availability: :desc, album_name: :asc)
      # .decorate
      # gem追加とパラメータの追加、ビューの変更
  end

    private
  def items_params
    params.require(:item).permit(:album_name, :genre_id, :label, :item_price_tax_free, :stock)
  end
end
