class UsersController < ApplicationController
	before_filter :authenticate_user!
	before_action :find_user, only: [:edit, :show ]

	def show
		
		@service_favorites = @user.service_favorites.paginate(:page => params[:page], :per_page => 5)
		@product_favorites = @user.product_favorites.paginate(:page => params[:page], :per_page => 5)
		products = Product.all
		@users = User.all
		services = Service.all
		@feed = (products + services).sort_by(&:created_at).reverse
		@conversations = Conversation.all
	end
    
    

	private

		def find_user
			@user = User.find(params[:id])
		end
end
