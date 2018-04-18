class Admins::DiscsController < ApplicationController
  def show
    @disc = Disc.find(params[:id])
    @item = @disc.item
    @artist = @item.artist
    @songs = @disc.songs
  end
end
