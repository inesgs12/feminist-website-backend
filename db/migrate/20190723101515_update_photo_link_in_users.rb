class UpdatePhotoLinkInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :photo, :string, default: "./Panda-user-default-photo.png"
  end
end
