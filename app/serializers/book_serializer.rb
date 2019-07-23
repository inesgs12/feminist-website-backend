class BookSerializer < ActiveModel::Serializer
    attributes :title, :year, :publisher, :synopsis, :isbn13, :language, :link, :cover, :author_id, :author, :id
end