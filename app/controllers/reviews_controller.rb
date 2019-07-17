class ReviewsController < ApplicationController
    before_action :find_review, only: [:edit, :show, :update, :destroy]

    def index
        reviews = Review.all
        render json: reviews 
    end

    def show
        render json: review
    end

    def create
        review = Review.new(review_params)
        if review.valid?
            review.save 
            render json: review 
        else 
            render json: { error: 'There was an error, please try again'}
            #render the explicit error! 
        end
    end

    def edit
    end

    def update
        review.update(review_params)
        if review.valid?
            render json: review
        else
            render json: {error: 'Update failed'}
        end
    end

    def destroy
        review.destoy 
        render json: { notice: 'Review deleted'}
    end

    private

    def review_params
        params.require(:review).permit(:star_rating, :comment)
    end

    def find_review
        review = Review.find_by(id: params[:id])
    end
end
