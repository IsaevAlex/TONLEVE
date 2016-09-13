class PhonesController < ApplicationController
	before_action :find_phone, only: [ :show, :destroy, :edit ]
    respond_to :html, :json

	def new
		@phone = Phone.new
		
		respond_to do |format|
      		format.js {}
    	end
	end

	def create
		@phone = current_user.phones.build(phone_params)
		
		if  @phone.save
			flash[:success] = "Номер успешно создан"
			redirect_to current_user
		else
			flash[:notice] = "Ошшибка :("
      		redirect_to :back
  		end
	end

	def edit
		respond_to do |format|
      		format.js {}
    	end
	end

	def update
		if @product.update(product_params)
			flash[:success] = "Номер успешно обновлен"
			redirect_to current_user
		else
			render '_edit_form'
		end
	enda

	def destroy
		respond_to do |format|
      		format.js {}
    	end
	end

	private
		def find_phone
			@phone = Phone.find(params[:id])
		end

		def phone_params
			params.require(:phone).permit(:user_id, :number)
		end
end
