class Admins::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
    #あとで時間があったらcurrent_userに変える
    @user = User.find(params[:id])
  end
end
