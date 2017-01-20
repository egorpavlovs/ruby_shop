class Product < ApplicationRecord
	has_many :comments, dependent: :destroy

	has_many :ordered_products

	has_many :orders, through: :ordered_products

	validates :title, :description, :stock, :price, presence: true
  
end
