class Admins::UsersController < ApplicationController
before_action :authenticate_admin!

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.where(quit_flg: false)
    @quit_user = User.where(quit_flg: true)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
     redirect_to admins_users_path
    else
      @user = User.find(params[:id])
      render :edit
    end
  end

  def destroy_update
      user = User.find(params[:id])
      user.update(quit_flg: true)
      flash[:hoge] = "正常に削除されました。"
      redirect_to admins_users_path
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :name_kanji, :name_kana, :postal_code, :address, :phone_number, :email)
  end
end
