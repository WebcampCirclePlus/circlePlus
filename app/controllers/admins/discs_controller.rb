class Admins::DiscsController < ApplicationController
  def show
    @disc = Disc.find(params[:id])
    @artist = @item.artist
    @songs = @disc.songs
  end
end
