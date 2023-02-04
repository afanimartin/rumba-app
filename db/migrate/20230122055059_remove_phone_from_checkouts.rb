class RemovePhoneFromCheckouts < ActiveRecord::Migration[7.0]
  def change
    remove_column :checkouts, :phone, :string
  end
end
