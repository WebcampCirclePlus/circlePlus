class Admins::ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @artist = @item.artist
    @discs = @item.discs
    @genre = @item.genre
    @song = @disc.songs
  end


  def new
    @artist = Artist.find(params[:artist_id])
    @item = Item.new
  end
end
