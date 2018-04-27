class Admins::DiscsController < ApplicationController
before_action :authenticate_admin_user!
  def new
    @disc = Disc.new
  end

  def create
    disc = Disc.new(dics_params)
    item = Item.find(params[:id])

  end

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
    @song = Song.new
  end

end
