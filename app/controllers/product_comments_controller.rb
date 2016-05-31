class ProductCommentsController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		@comment = @product.product_comments.create(params[:product_comment].permit(:comment))
		@comment.user_id = current_user.id if current_user
		@comment.save

		if @comment.save
			flash[:success] = "Отзыв успешно добавлен"
			redirect_to :back
		else
			flash[:error] = "Текстовое поле для отзыва не может быть пустым."
		      redirect_to :back
		end
	end

	def destroy
		@product = Product.find(params[:product_id])
		@comment = @product.product_comments.find(params[:id])
		@comment.destroy
		redirect_to :back
	end
end
