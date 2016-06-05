class SearchController < ApplicationController
	def index
		if params[:query].present?
  			@services = Service.search(params[:query], page: params[:page], per_page: 5)
  			@products = Product.search(params[:query], page: params[:page], per_page: 5)
		end
	end
end
