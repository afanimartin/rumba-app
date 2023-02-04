class AddAvatarToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar, :string, default: "https://res.cloudinary.com/dmyhendcr/image/upload/v1674321065/rumba_uploads/avatar/person_circle_icon_fzzjxd.png"
  end
end
