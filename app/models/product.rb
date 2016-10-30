class Product < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true


  has_many :comments
end
