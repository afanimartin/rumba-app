class CheckoutsController < ApplicationController
  before_action :set_checkout, only: %i[ show edit update destroy]

  def index
  end

  def new
    @checkout = Checkout.new
  end

  def create
    @checkout = Checkout.new(checkout_params)

    respond_to do |format|
      if @checkout.save
        format.html { redirect_to root_path, notice: "Checkout successful." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  private
    def checkout_params
      params.require(:checkout).permit(:phone, :location_id).merge(cart_id: current_user.cart.id, user_id: current_user.id)
    end

    def set_checkout
      @checkout = Checkout.find(params[:id])
    end
end
