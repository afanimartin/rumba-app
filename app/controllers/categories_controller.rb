class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to root_path, notice: "Category created successfully." }
      else
        format.html { render :new, status: :unprocessable_entity, alert: "Category not created." }
      end
    end
  end

  def show
  end

  private
    def category_params
      params.require(:category).permit(:name, :image_url)
    end

    def set_category
      @category = Category.find(params[:id])
    end
end
