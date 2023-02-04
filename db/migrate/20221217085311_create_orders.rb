class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :cart, type: :uuid, null: false, foreign_key: true
      t.belongs_to :product, type: :uuid, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
