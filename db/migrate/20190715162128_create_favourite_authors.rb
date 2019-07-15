class CreateFavouriteAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :favourite_authors do |t|
      t.references :author, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
