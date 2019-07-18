class AddLinkToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :link, :string
  end
end
