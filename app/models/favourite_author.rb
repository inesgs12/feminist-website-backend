class FavouriteAuthor < ApplicationRecord
  belongs_to :author
  belongs_to :user
  has_many :books, through: :authors
  has_many :books, through: :users
end
