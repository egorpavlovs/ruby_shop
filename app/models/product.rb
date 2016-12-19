class Product < ApplicationRecord
	has_many :comments, dependent: :destroy

	validates :title, :description, :stock, :price, presence: true
  
end
