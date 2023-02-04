class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :restaurants, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone
      t.string :logo
      t.string :cover_image
      t.integer :delivery_locations, array: true, default: []
      t.integer :category_ids, array: true, default: []

      t.timestamps
    end
  end
end
