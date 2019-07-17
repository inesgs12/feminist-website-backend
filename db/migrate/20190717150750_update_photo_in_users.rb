class UpdatePhotoInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :photo, :string, default: "../public/Panda-user-default-photo.png"
  end
end
