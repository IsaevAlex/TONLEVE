class Product < ActiveRecord::Base
	searchkick
	acts_as_votable
	has_many :product_images, dependent: :destroy
    accepts_nested_attributes_for :product_images
    belongs_to :user
    has_many :favorite_products  
    has_many :product_favorited_by, through: :favorite_products, source: :user
	has_many :product_orders    
    has_many :product_comments
    belongs_to :product_category
    belongs_to :product_sub_category
    belongs_to :currency
    belongs_to :unit

    
end
