class Product < ActiveRecord::Base
	has_many :product_images, dependent: :destroy
    accepts_nested_attributes_for :product_images
    belongs_to :user
    has_many :favorite_products  
    has_many :product_comments
    has_many :favorited_by, through: :favorite_products, source: :product
end
