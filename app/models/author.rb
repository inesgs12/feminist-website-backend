class Author < ApplicationRecord
    has_many :favourite_authors
    has_many :books
    has_many :users, through: :favourite_authors

    validates :name, presence: true 
    validates :bio, presence: true
end
