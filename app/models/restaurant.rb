class Restaurant < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :products, dependent: :destroy

  mount_uploader :logo, RestaurantLogoUploader
  mount_uploader :cover_image, RestaurantCoverUploader

  validates_presence_of :name, :description, :address, :phone, :logo, :cover_image
end
