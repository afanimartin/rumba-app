class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :products, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :name
      t.text :description
      t.string :image
      t.decimal :price
      t.references :category, type: :integer, null: false, foreign_key: true
      t.references :restaurant, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
