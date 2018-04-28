class GenresController < ApplicationController
  def show
  	@genre = Genre.find(params[:id])
  	@genre_items = @genre.items.where(item_show_flg: true).page(params[:page]).reverse_order
  end
end