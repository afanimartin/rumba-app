class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to root_path, notice: "Product created successfully." }
      else
        format.html { render :new, status: :unprocessable_entity, alert: "Product not created." }
      end
    end
  end

  def show
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :image, :description, :price, :restaurant_id)
    end
end