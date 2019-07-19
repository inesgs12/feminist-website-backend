class AddCoverToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :cover, :string
  end
end
