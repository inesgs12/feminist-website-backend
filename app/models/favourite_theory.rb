class FavouriteTheory < ApplicationRecord
  belongs_to :theory
  belongs_to :user
end
