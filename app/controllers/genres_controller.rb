class GenresController < ApplicationController
  def show
  	@genre = Genre.find(params[:id])
  	genre = Genre.find(params[:id])
  	@genre_items = genre.items.page(params[:page]).reverse_order
  end
end