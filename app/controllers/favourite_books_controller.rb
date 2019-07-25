class FavouriteBooksController < ApplicationController
    before_action :find_favourite_book, only: [:show]
    before_action :find_book, only: [:create, :destroy]
    before_action :find_user, only: [:create]

    def index
        favourite_books = get_current_user.favourite_books
        render json: favourite_books
    end

    def show
        # render json: favourite_book
    end

    def create
        favourite_book = FavouriteBook.create(favourite_book_params)
        render json: favourite_book
    end 

    def destroy
        favourite_book = FavouriteBook.find_by(book_id: params[:book_id], user_id: params[:user_id])
        favourite_book.destroy
        render json: { message: "book removed from liked books"}
    end

    private 
    
    def favourite_book_params
        params.require(:favourite_book).permit(:book_id, :user_id)
    end

    def find_favourite_book 
        favourite_book = FavouriteBook.find_by(id: params[:id])
    end

    def find_book 
        book = Book.find_by(id: params[:id])
    end

    def find_user 
        user = User.find_by(id: params[:id])
    end
end
