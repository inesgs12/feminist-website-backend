class Book < ApplicationRecord
    has_many :favourite_books
    has_many :reviews
    has_many :users, through: :favourite_books
    belongs_to :author


    validates :title, :year, :synopsis, :author_id, presence: true
    validates :year, length: { is: 4 }
end
