class SendingsController < ApplicationController

  # def create
  	# sending = Sending.new(sending_params)
    # @user = User.find(params[:user_id])
    # @userは消す
    # sending.user_id = @user.id
  	# @userを消してcurrentに直す
  	# if sending.save
  		# redirect_to user_path(@user.id)
  	# else
  		# render:index
  	# end
  # end

  # def edit
  #   @sending = Sending.find(params[:id])
  # end

  # def update
  #   sending = Sending.find(params[:id])
  #   sending.update(sending_params)
  #   if sending.user.id = sending.user_id
  #     redirect_to user_path(sending.user.id)
  #   else
  #     render:edit
  #   end
  # end

  #  def destroy
  #   sending = Sending.find(params[:id])
  #   sending.update(destroy_params)
  # end

  # private
  # def sending_params
  # 	params.require(:sending).permit(:sending_code, :sending_name, :sending_address,:user_id)
  # end
  # def destroy_params
  #   params.require(:sending).permit(:sending_show_flg, :user_id)
  #  end
  # 上は削除フラグです。実装未定。
  # 提案。if文で
end
