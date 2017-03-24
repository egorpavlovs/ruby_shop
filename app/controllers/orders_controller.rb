class OrdersController < ApplicationController
	before_action :authenticate_user!

	def new
		order = current_user.orders.create
		order.products << Product.where(id: session[:cart])
		session[:cart] = []

		redirect_to orders_path
	end

	def index
		@orders = Order.all
	end
end
