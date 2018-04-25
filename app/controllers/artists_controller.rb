class ArtistsController < ApplicationController
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
