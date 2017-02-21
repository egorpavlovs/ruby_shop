class OrdersController < ApplicationController
	before_action :authenticate_user!

	def new

	end

	def index

		@orders = Order.all
	end
end
