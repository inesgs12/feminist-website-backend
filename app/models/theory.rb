class Theory < ApplicationRecord
    validates :name, :history, presence: true
end
