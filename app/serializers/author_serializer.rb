class AuthorSerializer < ActiveModel::Serializer
    attributes :name, :bio, :books, :id
end