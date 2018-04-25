class UsersController < ApplicationController
before_action :authenticate_user!

  def thanks
  end

  def show
    @order = current_user.orders.order('id ASC').limit(20).page(params[:page]).per(3)
    # @order = current_user.orders.page(params[:page]).per(3)
  end

  def edit
  end

  def update
  	user = current_user
  	user.update(user_params)
  	redirect_to edit_user_path(user.id)
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
