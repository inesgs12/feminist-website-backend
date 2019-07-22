class FavouriteAuthorsController < ApplicationController
    before_action :find_favourite_author, only: [ :show]
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
        favourite_author = FavouriteAuthor.create(favourite_author_params)
        render json: favourite_author
    end

    def destroy 
        favourite_author = FavouriteAuthor.find_by(author_id: params[:author_id], user_id: params[:user_id])
        favourite_author.destroy 
        render json: { message: "author removed from liked authors"}
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
