class Admins::ItemsController < ApplicationController
  def show
    @artist = Artist.find(params[:artist_id])
    @item = Item.find(params[:id])
    @discs = @item.discs
  end


  def new
    @artist = Artist.find(params[:artist_id])
    @item = Item.new
  end
end
