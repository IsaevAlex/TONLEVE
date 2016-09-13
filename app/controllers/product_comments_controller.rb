class ProductCommentsController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		@comment = ProductComment.new
	    @comment = @product.product_comments.create(params[:product_comment].permit(:comment))
		@comment.user_id = current_user.id if current_user
		@comment.save
	end

	def destroy
		@product = Product.find(params[:product_id])
		@comment = @product.product_comments.find(params[:id])
		@comment.destroy
		respond_to do |format|
      		  format.js { flash.now[:success] = "Вы удалили отзыв" }
    	end
	end
end
