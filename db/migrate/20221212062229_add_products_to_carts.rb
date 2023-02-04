class AddProductsToCarts < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :product_ids, :string, array: true, default: []
  end
end
