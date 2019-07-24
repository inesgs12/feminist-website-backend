class AddBookIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :book, foreign_key: true
  end
end
