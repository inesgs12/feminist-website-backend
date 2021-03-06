class User < ApplicationRecord
    has_secure_password
    
    has_many :favourite_theories
    has_many :favourite_authors
    has_many :favourite_books
    has_many :authors, through: :favourite_authors
    has_many :books, through: :favourite_books
    has_many :theories, through: :favourite_theories 
    has_many :reviews
    # has_many :books, through: :reviews

    def reviewed_books
        self.reviews.map{|r| r.book}
    end

    validates :username, :password, presence: true 
    validates :username,{
        uniqueness: { case_sensitive: false, message: "username has been taken"},
        length: { minimum: 2 }
    }

    validates :password, length: { in: 4..20, wrong_length: "Password should have between 4 - 20 characters" }
        
    validates :bio, length: { maximum: 500 }

end
