class Product < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
	has_many :comments, dependent: :destroy

	has_many :ordered_products

	has_many :orders, through: :ordered_products

	validates :title, :description, :stock, :price, :price_lot, :color, :weight, presence: true
  
end
