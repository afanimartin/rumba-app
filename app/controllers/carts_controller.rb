class CartsController < ApplicationController
  before_action :authenticate_user!, only: %i[ show ]

  def show
  end

  def destroy
    @order = current_user.cart.orders.find(params[:id])
    @order.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(current_user.cart), notice: "Item removed from cart." }
    end
  end
end
