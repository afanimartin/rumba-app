class Checkout < ApplicationRecord
  belongs_to :cart
  after_save :clear_cart

  validates :phone, length: { maximum: 10 }
  validates :phone, presence: true

  def clear_cart
    self.cart.orders.destroy_all
  end
end
