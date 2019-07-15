class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.string :publisher
      t.text :synopsis
      t.string :isbn

      t.timestamps
    end
  end
end
