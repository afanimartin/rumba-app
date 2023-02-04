class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  end

  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        format.html { redirect_to root_path, notice: "Product added to cart." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
    @order = Order.find(params[:id])
    respond_to do |format|
      if @order.destroy
        format.html { redirect_to cart_path(current_user.cart), notice: "Item removed from cart." }
      else
        format.html { redirect_to root_path, status: :unprocessable_entity }
      end
    end
  end

  private
    def order_params
      params.require(:order).permit(:quantity, :product_id).merge(cart_id: current_user.cart.id)
    end
end
