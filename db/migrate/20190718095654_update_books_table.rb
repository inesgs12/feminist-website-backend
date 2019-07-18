class UpdateBooksTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :isbn, :"isbn-13"
  end
end
