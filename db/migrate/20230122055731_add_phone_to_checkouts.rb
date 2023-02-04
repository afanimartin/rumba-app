class AddPhoneToCheckouts < ActiveRecord::Migration[7.0]
  def change
    add_column :checkouts, :phone, :integer, max: 10
  end
end
