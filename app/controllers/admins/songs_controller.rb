class Admins::SongsController < ApplicationController
  def update
    @item = Item.find(params[:item_id])
    @disc = Disc.find(params[:disc_id])
    song = Song.find(params[:id])
    song.update(song_params)
    redirect_to edit_admins_item_disc_path(@item, @disc)
  end

  def destroy
    @item = Item.find(params[:item_id])
    @disc = Disc.find(params[:disc_id])
    song = Song.find(params[:id])
    song.destroy
    redirect_to edit_admins_item_disc_path(@item, @disc)
  end

  def create
    @item = Item.find(params[:item_id])
    @disc = Disc.find(params[:disc_id])
    song = Song.new(song_params)
    song.disc_id = @disc.id
    song.save
    redirect_to edit_admins_item_disc_path(@item, @disc)
  end

  private
  def song_params
    params.require(:song).permit(:song_name)
  end

end
