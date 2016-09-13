class SearchController < ApplicationController
	def index
		
	    if params[:query].present?
  			@services = Service.search(params[:query], page: params[:page], per_page: 5)
  			@products = Product.search(params[:query], page: params[:page], per_page: 5)
		end
		if params[:product_category]
		  @category_name = ProductSubCategory.find_by(name: params[:product_category]).name
		  @category_id = ProductSubCategory.find_by(name: params[:product_category]).id
		  @products = Product.where(product_sub_category_id: @category_id).order("created_at DESC")
	   	end
	   	if params[:filters].present?
	   		# you can check for all the different filter values you want to allow. first is future/current/past
	      if params[:filters][:created_at] == 'today' && params[:filters][:product_sub_category_id] == @category_id
	        @products = Product.where(product_sub_category_id: @category_id).where("created_at >= ?", Time.zone.now.beginning_of_day)
	      elsif params[:filters][:created_at] == 'yestarday'
	        @products = Product.where("DATE(created_at) = ?", Date.today-1)
	      elsif params[:filters][:created_at] == '5 days ago'
	        @products = Product.where("DATE(created_at) = ?", Date.today-5)
	      end
	    end
	 end

	
end
