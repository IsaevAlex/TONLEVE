class ProductsController < ApplicationController
	before_action :find_product, only: [ :destroy, :edit, :update, :show, :favorite ]
    respond_to :html, :json
    
    def upvote 
  		@product = Product.find(params[:id])
  		@product.upvote_by current_user
  		redirect_to :back
	end  

	def downvote
  		@product = Product.find(params[:id])
  		@product.downvote_by current_user
  		redirect_to :back
	end

	

	def new
		@product = Product.new

		respond_to do |format|
      		format.js {}
    	end
	end

	def favorite
	    type = params[:type]
	    if type == "favorite"
	      current_user.product_favorites << @product
	      redirect_to :back, notice: 'Вы добавили в избранное продукт'

	    elsif type == "unfavorite"
	      current_user.product_favorites.delete(@product)
	      redirect_to :back, notice: 'Вы удалили из избранных продукт'

	    else
	      # Type missing, nothing happens
	      redirect_to :back
	    end
    end

	def create
		@product = current_user.products.build(product_params)
		
		if  @product.save
			flash[:success] = "Товар успешно создан"
			redirect_to current_user
		else
			flash[:notice] = "Ошшибка :("
      		redirect_to :back
  		end
	end

	def show
		session[:product_id] = @product.id
        session[:recipient_user_id] = @product.user.id
		respond_to do |format|
      		format.js {}
    	end

    end

    def index
    	@products = Product.all
    end

	def edit
		respond_to do |format|
      		format.js {}
    	end
	end

	def update
		if @product.update(product_params)
			flash[:success] = "Товар успешно обновлен"
			redirect_to current_user
		else
			render '_edit_form'
		end
    end

	def destroy
		@product.destroy
		flash[:success] = "Товар успешно удален"
		redirect_to current_user
	end

	private
		def find_product
			@product = Product.find(params[:id])
		end

		def product_params
			params.require(:product).permit(:name, :info, :category_id, :price, :product_category_id, :product_sub_category_id, :unit_id, :currency_id, :product_count, product_images_attributes: [:id, :avatar, :_destroy])
		end
end
