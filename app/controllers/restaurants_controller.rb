class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.includes(:category)
    category = params[:category_id]
    @restaurants = @restaurants.where(category_id: category )
  end

  def new
    if current_user && current_user.is_user_admin?
      @restaurant = Restaurant.new
    else
      redirect_to root_path, alert: "Can not perform this action."
    end
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to restaurants_path, notice: "Restaurant created successfully." }
      else
        format.html { render :new, status: :unprocessable_entity, alert: "Restaurant not created." }
      end
    end
  end

  def show
    @products = @restaurant.products
  end

  def edit
  end

  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to restaurants_path, notice: "Restaurant updated successfully." }
      else
        format.html { render :edit, status: :unprocessable_entity, alert: "Restaurant not updated." }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @restaurant.destroy
        format.html { redirect_to restaurants_path, notice: "Restaurant deleted successfully." }
      else
        format.html { redirect_to restaurants_path, status: :unprocessable_entity, alert: "Restaurant not deleted." }
      end
    end
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :address, :phone, :logo, :cover_image, :category_id).merge(user_id: current_user.id)
    end
end
