class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false}
    has_many :favourite_theories
    has_many :favourite_authors
    has_many :favourite_books
    has_many :authors, through: :favourite_authors
    has_many :books, through: :favourite_books
    has_many :theories, through: :favourite_theories 
end
