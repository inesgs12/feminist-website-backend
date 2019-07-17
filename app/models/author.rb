class Author < ApplicationRecord
    has_many :favourite_authors
    has_many :publications
    has_many :books, through: :publications
    has_many :users, through: :favourite_authors

    validates :name, presence: true 
    validates :bio, presence: true
end
