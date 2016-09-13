class ProductCategory < ActiveRecord::Base
	searchkick
	has_many :products
	has_many :product_sub_categories
end
