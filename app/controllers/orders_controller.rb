class OrdersController < ApplicationController
  def new
  	@sendings = Sending.all
  end

  def create
  end

  def edit
  end

  def update
  end

end
