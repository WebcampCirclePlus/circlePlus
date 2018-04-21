class Admins::ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @artist = @item.artist
    @discs = @item.discs
    @genre = @item.genre

    @disc = Disc.find(params[:id])
    @songs = @disc.songs
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
    @item = item.artist_id
    redirect_to admins_item_path(@item, item)
  end

  private

  def item_params
    #params.require(:genre).permit(:genre_id)
    params.require(:item).permit(:admin_id, :item_show_flg, :artist_id, :genre_id, :label, :item_img, :album_name, :item_price_tax_free, :stock, :on_sale_date)
  end
end
