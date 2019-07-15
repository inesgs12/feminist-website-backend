class FavouriteBookSerializer < ActiveModel::Serializer
  attributes :id
  has_one :book
  has_one :user
end
