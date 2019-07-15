class CreateFavouriteBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :favourite_books do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
