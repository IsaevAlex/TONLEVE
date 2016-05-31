class UsersController < ApplicationController
	before_filter :authenticate_user!
	before_action :find_user, only: [:edit, :show ]

	def show
	end
    
    def index
      @users = User.where.not("id = ?",current_user.id).order("created_at DESC")
      @conversations = Conversation.involving(current_user).order("created_at DESC")
    end

	private

		def find_user
			@user = User.find(params[:id])
		end
end
