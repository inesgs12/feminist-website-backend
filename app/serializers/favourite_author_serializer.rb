class FavouriteAuthorSerializer < ActiveModel::Serializer
  attributes :id
  has_one :author
  has_one :user
end
