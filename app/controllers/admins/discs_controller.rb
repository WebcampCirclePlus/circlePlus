class Admins::DiscsController < ApplicationController
  def show
    @item = Item.find(params[:item_id])
    @disc = Disc.find(params[:id])
    @artist = Artist.find(params[:artist_id])
    @songs = @disc.songs
  end
end
