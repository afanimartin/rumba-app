class WelcomeController < ApplicationController
  def index
    @categories = Category.all.limit(6)
    @restaurants = Restaurant.all
  end
end
