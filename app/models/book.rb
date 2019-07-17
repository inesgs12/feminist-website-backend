class Book < ApplicationRecord
    has_many :favourite_books
    has_many :reviews
    has_many :publications
    has_many :users, through: :favourite_books
    has_many :authors, through: :publications

    validates :title, :year, :synopsis, presence: true
    validates :year, length { is: 4 }
end
