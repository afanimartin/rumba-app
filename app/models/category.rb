class Category < ApplicationRecord
  has_many :restaurants

  mount_uploader :image_url, CategoryImageUploader

end
