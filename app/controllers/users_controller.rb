class UsersController < ApplicationController
before_action :authenticate_user!

  def thanks
  end

  def show
    @orders = current_user.orders
    @order = @orders.page(params[:page]).per(2)
    @sum = 1
  end

  def edit
  end

  def update
  	user = current_user
  	user.update(user_params)
  	redirect_to user_path(user.id)
  end



  def destroy_update
      current_user.update(quit_flg: true)
      redirect_to logout_path
  end

  private
  def user_params
  	params.require(:user).permit(:email, :user_name, :name_kana ,:name_kanji,:phone_number, :postal_code,:address)
  end
end
