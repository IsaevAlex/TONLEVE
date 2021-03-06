class ServicesController < ApplicationController
	before_action :find_service, only: [ :destroy, :edit, :update, :favorite ]
    respond_to :html, :json
    
	def index
        @services = Service.all
	end

	def new
		@service = Service.new
		
		respond_to do |format|
      		format.js {}
    	end
	end

	def upvote 
  		@service = Service.find(params[:id])
  		@service.upvote_by current_user
  		respond_to do |format|
      		   format.js 
    	end
  	end  

	def downvote
  		@service = Service.find(params[:id])
  		session[:id] = @service.id
  		@service.downvote_by current_user
  		respond_to do |format|
      		   format.js
    	end
  	end

	def favorite
	    type = params[:type]
	    if type == "favorite"
	      current_user.service_favorites << @service
	      redirect_to :back, notice: 'Вы добавили в избранное предложение'

	    elsif type == "unfavorite"
	      current_user.service_favorites.delete(@service)
	      redirect_to :back, notice: 'Вы удалили из избранных предложение'

	    else
	      # Type missing, nothing happens
	      redirect_to :back
	    end
    end



	def create
		@service = current_user.services.build(service_params)
		
		if  @service.save
			flash[:success] = "Товар успешно создан"
			redirect_to current_user
		else
			flash[:notice] = "Ошшибка :("
      		redirect_to :back
  		end
	end

	def show
		@service = Service.find(params[:id])
		respond_to do |format|
      		format.js {}
    	end
    end

	def edit
		respond_to do |format|
      		format.js {}
    	end
	end

	def update
		if @service.update(service_params)
			flash[:success] = "Товар успешно обновлен"
			redirect_to current_user
		else
			render '_edit_form'
		end
    end

	def destroy
		@service.destroy
		flash[:success] = "Товар успешно удален"
		redirect_to current_user
	end

	private
		def find_service
			@service = Service.find(params[:id])
		end

		def service_params
			params.require(:service).permit(:name, :info, :service_category_id, :price, :currency_id, :price_category_id, service_images_attributes: [:id, :avatar, :_destroy])
		end
end
