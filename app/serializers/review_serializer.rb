class ReviewSerializer < ActiveModel::Serializer
    attributes :star_rating, :id, :comment, :book_id, :review_user

    def review_user
        self.object.user.username
    end
end