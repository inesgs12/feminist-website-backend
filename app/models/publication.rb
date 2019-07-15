class Publication < ApplicationRecord
  belongs_to :book
  belongs_to :author
  has_many :users, through: :books 
  has_many :users, through: :authors
  has_many :reviews, through: :books
end
