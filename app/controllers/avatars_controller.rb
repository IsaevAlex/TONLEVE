class AvatarsController < ApplicationController

	def new
		 @user = User.find(params[:user_id])
    	 @avatar = @user.build_avatar
	end

	def create
		@user = User.find(params[:user_id])
		@avatar = @user.create_avatar(params[:avatar].permit(:photo))
		@avatar.user_id = current_user.id if current_user
		
		if  @avatar.save
			flash[:success] = "Лого успешно загружен"
			redirect_to current_user
		else
			flash[:notice] = "Ошшибка :("
      		redirect_to :back
  		end
	end

	
end
