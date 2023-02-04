class ApplicationController < ActionController::Base
  before_action :set_cart

  def set_cart
    if current_user && current_user.cart.nil?
      Cart.create(user_id: current_user.id)
    end
  end
end
