class ChangeAuthorinBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :author, :author_id
  end
end
