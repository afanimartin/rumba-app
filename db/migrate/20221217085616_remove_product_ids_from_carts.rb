class RemoveProductIdsFromCarts < ActiveRecord::Migration[7.0]
  def change
    remove_column :carts, :product_ids, :string
  end
end
