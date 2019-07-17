class Review < ApplicationRecord
    belongs_to :book
    
    validates :star_rating, :comment, presence: true
    validates :comment, length: { minimum: 2 } 
end
