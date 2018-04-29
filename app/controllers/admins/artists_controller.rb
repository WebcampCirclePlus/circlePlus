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
def create
    artist = Artist.new(artist_params)
    artist.save
    redirect_to admins_artist_path(artist)
  end
  private
  def artist_params
    params.require(:artist).permit(:artist_name)
  end
end
