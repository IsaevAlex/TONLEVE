class Phone < ActiveRecord::Base
	belongs_to :user
	phone_regex = /(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}/

	validates :number, :presence   => true
                       
end
