class Service < ActiveRecord::Base
	has_many :service_images, dependent: :destroy
	has_many :service_comments
	
    accepts_nested_attributes_for :service_images
	belongs_to :user
end
