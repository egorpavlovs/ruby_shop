class OrderedProductsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_ordered_product, only: [:destroy]

	def index
		@ordered_products = OrderedProduct.all
	end

	def destroy
		@ordered_product.destroy
	end



	private
		def set_ordered_product
			@ordered_product = OrderedProduct.find(params[:id])
			redirect_to ordered_products_url, notice: 'Ordered product was successfully destroyed.'
		end

end	
