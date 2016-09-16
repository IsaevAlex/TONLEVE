class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  

  validates :password, presence: true, length: {minimum: 5, maximum: 120}, on: :create
  validates :cupassword, length: {minimum: 5, maximum: 120}, on: :update, allow_blank: true
  
  has_many :phones
  has_many :messages, :dependent => :destroy
  has_many :conversations, :foreign_key => :sender_id,  :dependent => :destroy
  

  has_many :products, :dependent => :destroy
  has_many :product_comments, :dependent => :destroy

  has_many :services, :dependent => :destroy
  has_many :service_comments, :dependent => :destroy

  has_many :favorite_products, :dependent => :destroy
  has_many :product_favorites, through: :favorite_products, source: :product
  
  has_many :favorite_services, :dependent => :destroy
  has_many :service_favorites, through: :favorite_services, source: :service



  has_many :service_likes # just the 'relationships'
  has_many :likes, through: :service_likes, source: :service 

  has_many :product_likes # just the 'relationships'
  has_many :likes_product, through: :product_likes, source: :product

  belongs_to :account_category

  
end
