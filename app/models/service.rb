class Service < ActiveRecord::Base
	searchkick
	acts_as_votable
	has_many :service_images, dependent: :destroy
    accepts_nested_attributes_for :service_images
    belongs_to :user
    has_many :favorite_services  
    has_many :service_favorited_by, through: :favorite_services, source: :user
	has_many :service_comments
    belongs_to :service_category
    belongs_to :service_sub_category
    belongs_to :currency
end
