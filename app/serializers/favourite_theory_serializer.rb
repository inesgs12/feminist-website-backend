class FavouriteTheorySerializer < ActiveModel::Serializer
  attributes :id
  has_one :theory
  has_one :user
end
