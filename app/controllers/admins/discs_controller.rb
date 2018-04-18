class Admins::DiscsController < ApplicationController
  def show
    @item = Item.find(params[:item_id])
    @disc = Disc.find(params[:id])
    @artist = @item.artist
    @songs = @disc.songs
  end
end
