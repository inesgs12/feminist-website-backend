class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.text :comment

      t.timestamps
    end
  end
end
