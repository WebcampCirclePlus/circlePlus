class Admins::ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    # @items = @artist.items
  end

  def new
    @artist = Artist.new
    @artists = Artist.all
  end

end
