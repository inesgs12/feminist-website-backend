class BookSerializer < ActiveModel::Serializer
    attributes :title, :year, :publisher, :synopsis, :isbn13, :language, :link, :cover, :author_id, :author, :id, :reviews

    def reviews
		self.object.reviews.map do |review|
			ReviewSerializer.new(review)
		end
    end
    
end