class CreateCheckouts < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :checkouts, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.references :cart, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
