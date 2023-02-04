class Product < ApplicationRecord
  belongs_to :restaurant
  has_many :orders

  has_many :carts, through: :orders

  mount_uploader :image, ProductImageUploader
end
