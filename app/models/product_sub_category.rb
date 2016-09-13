class ProductSubCategory < ActiveRecord::Base
	searchkick
	belongs_to :product_category
	has_many :products
end
