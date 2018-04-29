class Admins::ItemsController < ApplicationController
before_action :authenticate_admin!
  def show
    @item = Item.find(params[:id])
    @artist = @item.artist
    @discs = @item.discs
    @genre = @item.genre
    @disc = Disc.new
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
      redirect_to new_admins_artist_items_path(item.artist),notice:"!情報を正しく入力してください。"
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
    # CartItem.destroy()
    redirect_to admins_artist_path(item.artist.id)
  end

  def itemshow
    item = Item.find(params[:item_id])
    item.update(item_show_flg: 1)
    redirect_to admins_artist_path(item.artist.id)
  end

  def manage_stock
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to admins_orders_path

  #   item = Item.find(params[:id])
    # 在庫の増減がやりたい人生だった..けどそのためには@sumを保存するカラムが必要になりそう？
    # メンターさんに聞きます。
    # @sums = 0
    # stock = item.stock
      # if @sums >= 0
        # item.stock = stock + @sums
        # redirect_to admins_orders_path
      # else
      # item.stock = stock - @sums
      # end
  end

  private

  def item_params
    params.require(:item).permit(:admin_id, :item_show_flg, :artist_id, :genre_id, :label, :item_img, :album_name, :item_price_tax_free, :stock, :on_sale_date, :created_at, :updated_at)
  end
end
