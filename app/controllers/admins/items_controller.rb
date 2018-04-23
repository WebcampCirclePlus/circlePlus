class Admins::ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @artist = @item.artist
    @discs = @item.discs
    @genre = @item.genre
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    item.item_show_flg = 1
    item.admin_id = current_admin.id
    item.save
<<<<<<< HEAD
    redirect_to admins_item_path(item)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to admins_item_path(item)
=======
    @item = item.artist_id
    redirect_to admins_item_path(@item)
>>>>>>> 48f7a3dcce32232072d2b70c1cba12087a768a1d
  end

  private

  def item_params
    params.require(:item).permit(:admin_id, :item_show_flg, :artist_id, :genre_id, :label, :item_img, :album_name, :item_price_tax_free, :stock, :on_sale_date, :created_at, :updated_at)
  end
end
