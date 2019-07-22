class RemoveIntegerFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :integer
  end
end
