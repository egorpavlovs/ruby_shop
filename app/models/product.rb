class Product < ApplicationRecord
	include ActionView::Helpers::TextHelper 
  validates :title, presence: true
  validates :title, uniqueness: true


  has_many :comments
  # делает коротким описание на индексе 
  def truncated_description
  	truncate(description, length: 64)
  	
  end
end
