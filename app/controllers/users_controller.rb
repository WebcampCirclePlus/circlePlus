class UsersController < ApplicationController
before_action :authenticate_user!

  def thanks
  end

  def show
  end

  def edit
  	@user = current_user
  end

  def update
  	user = User.find(params[:id])
  	if user.id = current_user.id
  	 user.update(user_params)
  	 redirect_to user_path(user)
  	else
  	   render:edit
  	end
  end

  def destroy_update
      current_user.update(quit_flg: 1)
      redirect_to logout_path
  end

  private
  def user_params
  	params.require(:user).permit(:email, :user_name, :name_kana ,:name_kanji,:phone_number, :postal_code,:address)
  end

  def update_params
    params.fetch(:user,{}).permit(:email)
  end

end
