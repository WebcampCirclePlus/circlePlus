class Admins::ItemsController < ApplicationController
before_action :authenticate_admin_user!
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
    if item.save
    redirect_to admins_item_path(item)
    else
     redirect_to admins_artist_path(item.artist)
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to admins_item_path(item)
  end

  def hidden
    item = Item.find(params[:item_id])
    item.update(item_show_flg: 0)
    redirect_to admins_artist_path(item.artist.id)
  end

  private

  def item_params
    params.require(:item).permit(:admin_id, :item_show_flg, :artist_id, :genre_id, :label, :item_img, :album_name, :item_price_tax_free, :stock, :on_sale_date, :created_at, :updated_at)
  end
end
