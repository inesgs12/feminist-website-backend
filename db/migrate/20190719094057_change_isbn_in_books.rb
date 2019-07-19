class ChangeIsbnInBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :"isbn-13", :isbn13
  end
end
