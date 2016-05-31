class Avatar < ActiveRecord::Base
	belongs_to :user
	has_attached_file :photo, styles: { thumb: "60x60>",
    small: "80x80>",
    medium: "140x140>",
    large:   "300x300>"}, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
