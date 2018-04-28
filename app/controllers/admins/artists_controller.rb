class Admins::ArtistsController < ApplicationController
before_action :authenticate_admin!
  def show
    @artist = Artist.find(params[:id])
    @trueitems = @artist.items.where(item_show_flg: true)
    @falseitems = @artist.items.where(item_show_flg: false)
  end

  def new
    @artist = Artist.new
    @artists = Artist.all
  end

end
