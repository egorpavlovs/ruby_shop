class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  expose_decorated :product
  expose_decorated :products, -> { fetch_products }
  # GET /products
  # GET /products.json
  
  expose :comment, -> { Comments.new }

  def index 
  end

  def show
    
  end

  

  # POST /products
  # POST /products.json
  def create
    if product.save
      redirect_to product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    if product.update(product_params)
      redirect_to product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    product.destroy
    redirect_to products_url, notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def fetch_products
      products = Product.all
      products = products.where("title ILIKE ?", "%#{params[:search]}%") if params[:search]
      products

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :price, :stock, :price_lot, :color, :weight)
    end
end
