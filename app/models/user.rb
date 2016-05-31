class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_one :avatar
  has_many :products
  has_many :product_comments
  has_many :services
  has_many :service_comments
  has_many :favorite_products
  has_many :favorites, through: :favorite_products, source: :product

  has_many :conversations, :foreign_key => :sender_id
  belongs_to :account_category
end
