class Admins::ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @artist = @item.artist
    @discs = @item.discs
    @genre = @item.genre
  end


  def new
    @item = Item.new
  end
end
