class FavouriteAuthorsController < ApplicationController
    before_action :find_favourite_author, only: [ :show, :destroy]
    before_action :find_author, only: [:create, :destroy]
    before_action :find_user, only: [:create]

    def index
        favourite_authors = FavouriteAuthor.all 
        render json: favourite_authors
    end

    def show
        render json: favourite_author
    end 

    def create
        favourite_author = FavouriteAuthor.new(favourite_author_params)
        if favourite_author.valid?
            favourite_author.save 
            render json: favourite_author
        else
            render json: { error: 'Please try again'}
            #render the explicit error!
        end
    end

    def destroy 
        favourite_author.destroy 
        render json: author
    end

    private

    def favourite_author_params
        params.require(:favourite_author).permit(:author_id, :user_id)
    end

    def find_favourite_author 
        favourite_author = FavouriteAuthor.find_by(id: params[:id])
    end

    def find_author 
        author = Author.find_by(id: params[:id])
    end

    def find_user 
        user = User.find_by(id: params[:id])
    end

end
