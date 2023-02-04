class RemoveDeliveryLocationsFromRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :delivery_locations, :string
  end
end
