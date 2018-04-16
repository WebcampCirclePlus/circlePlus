class Admins::DiscsController < ApplicationController
  def show
    @item = Item.find(params[:item_id])
    @disc = Disc.find(params[:id])
    @songs = @disc.songs
  end
end
