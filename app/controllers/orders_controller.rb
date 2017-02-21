class OrdersController < ApplicationController
	before_action :authenticate_user!

	def new
    redirect_to orders_path
	end

	def index

		@orders = Order.all
	end
end
