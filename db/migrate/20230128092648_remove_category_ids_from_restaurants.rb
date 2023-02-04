class RemoveCategoryIdsFromRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :category_ids, :string
  end
end
