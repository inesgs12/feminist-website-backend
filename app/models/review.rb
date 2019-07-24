class Review < ApplicationRecord
    belongs_to :book
    belongs_to :user
    
    validates :star_rating, :comment, presence: true
    validates :comment, length: { minimum: 2 } 
end
