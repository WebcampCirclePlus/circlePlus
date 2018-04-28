class Admins::DiscsController < ApplicationController
before_action :authenticate_admin!

  def create
    disc = Disc.new(disc_params)
    item = Item.find(params[:item_id])
    disc.item_id = item.id
    if disc.save(disc_params)
      redirect_to edit_admins_item_disc_path(item,disc)
    else
      redirect_to admins_item_path(item)
    end
  end

  def edit
    @item = Item.find(params[:item_id])
    @disc = Disc.find(params[:id])
    @songs = @disc.songs
    @song = Song.new
  end

  def destroy
    disc = Disc.find(params[:id])
    item = disc.item
    if disc.destroy
      redirect_to admins_item_path(item)
    else
      redirect_to admins_item_path(item)
    end
  end

  private
  def disc_params
  params.require(:disc).permit(:item_id, :disc_type)
  end
end
