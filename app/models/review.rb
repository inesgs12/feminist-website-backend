class Review < ApplicationRecord
    belongs_to :book
    belongs_to :user
    
    validates :star_rating, :comment, presence: true
    validates :comment, length: { minimum: 2 } 
    validates :star_rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "Please enter a star rating"}
end
