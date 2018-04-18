class UsersController < ApplicationController
  def thanks
  end

  def show
  	@user = User.find(params[:id])
  	# userの変数は後々消す
  	@sending = Sending.new
  end

  def edit
  	@user = current_user
  end

  def update
  	user = User.find(params[:id])
  	id = current_user.id
  	if user.update(user_params)
  	   redirect_to user_path(user.id)
  	else
  	   redirect_to edit_user_path(user.id)
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:email, :password, :user_name, :name_kana ,:name_kanji,:phone_number)
  end

end
