class ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews 
    end

    def show
        review = Review.find_by(id: params[:id])
        render json: review
    end

    def create
        review = Review.new(review_params)
        if review.valid?
            review.save 
            render json: review 
        else 
            render json: { error: "Validation failed: Please enter a star rating & a comment"}
            #render the explicit error! 
        end
    end

    def edit
    end

    def update
        # byebug
        review = Review.find_by(id: params[:id])
        book = Book.find_by(id: params[:book_id])
        review.update(review_params)
        if review.valid?
            render json: book.reviews
        else
            render json: {error: 'Update failed'}
        end
    end

    def destroy
        review = Review.find_by(id: params[:id])
        review.destroy 
        render json: { notice: 'Review deleted'}
    end

    private

    def review_params
        params.permit(:star_rating, :comment, :user_id, :book_id)
    end
end
