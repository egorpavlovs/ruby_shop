class CommentsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_product, only: [:create]
  # GET /comments
  # GET /comments.json
  # def index
  #   @comments = Comment.all
  # end

  # GET /comments/1
  # GET /comments/1.json

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  

  # POST /comments
  # POST /comments.json
  def create
    @comment = @product.comments.new(comment_params)

    
    @comment.save
    
    
  end

 

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_product
      @product = Product.find(params[:product_id])
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:product_id, :text)
    end
end
