class Admins::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
     redirect_to admins_users_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :name_kanji, :name_kana, :postal_code, :address, :phone_number, :email)
  end
end
