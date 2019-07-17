class FavouriteBooksController < ApplicationController
    before_action :find_favourite_book, only: [:show, :destroy]
    before_action :find_book, only: [:create, :destroy]
    before_action :find_user, only: [:create]

    def index
        favourite_books = FavouriteBook.all 
        render json: favourite_books
    end

    def show
        render json: favourite_book
    end

    def create
        favourite_book = FavouriteBook.new(favourite_book_params)
        if favourite_book.valid?
            favourite_book.save 
            render json: favourite_book
        else
            render json: { error: 'Please try again'}
        end
    end 

    def destroy
        favourite_book.destroy
        render json: book
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
