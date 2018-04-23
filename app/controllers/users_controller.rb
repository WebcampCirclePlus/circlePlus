class UsersController < ApplicationController
before_action :authenticate_user!

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
  	if user.id = current_user.id
  	 user.update(user_params)
  	 redirect_to user_path(user.id)
  	else
  	   render:edit
  	end
  end

  def destroy
    if user.id = current_user.id
      user.update(update_params)
      # self.deleted = true
      # save
      # or
      save(:quit_flg =>true)
      # trueの場合に～…みたいな記述をしなければ。
      redirect_to top_path
    else
      render:show
    end
  end

  private
  def user_params
  	params.require(:user).permit(:email, :password, :user_name, :name_kana ,:name_kanji,:phone_number)
  end

  def update_params
    params.require(:user).permit(:quit_flg)
  end

end
