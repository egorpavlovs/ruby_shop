class CartProductsController < ApplicationController
	before_action :authenticate_user!

	expose_decorated :products, -> { Product.where(id: session[:cart]) }

  def new
  	session[:cart] = [] unless session[:cart]
    session[:cart] << params[:product_id] if Product.find_by(id: params[:product_id])

    session[:cart] = session[:cart].uniq

    redirect_to :back
  end

  def destroy
		session[:cart].delete(params[:id])

		redirect_to :back
  end

  def index
  	binding.pry
  end
  
end
