class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_one :avatar, :dependent => :destroy
  accepts_nested_attributes_for :avatar
  
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
