class Service < ActiveRecord::Base
	searchkick
	acts_as_votable
	has_many :service_images, dependent: :destroy
	has_many :service_comments
	
	has_many :favorite_services  
    has_many :service_favorited_by, through: :favorite_services, source: :user

    has_many :service_likes
    has_many :service_liked_by, through: :service_likes, source: :user 

    accepts_nested_attributes_for :service_images
	belongs_to :user
end