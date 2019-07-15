class FavouriteBook < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_many :authors, through: :books
  has_many :authors, through: :users
  has_many :reviews, through: :books
end
