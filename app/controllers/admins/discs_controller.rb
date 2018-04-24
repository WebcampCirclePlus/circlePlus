class Admins::DiscsController < ApplicationController
  def show
    @disc = Disc.find(params[:id])
    @item = Item.find(params[:item_id])
    @artist = @item.artist
    @songs = @disc.songs
  end

  def edit
    @item = Item.find(params[:item_id])
    @disc = Disc.find(params[:id])
    @songs = @disc.songs
  end

end
