class CreateFavouriteTheories < ActiveRecord::Migration[5.2]
  def change
    create_table :favourite_theories do |t|
      t.references :theory, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
