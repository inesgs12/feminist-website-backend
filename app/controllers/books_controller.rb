class BooksController < ApplicationController

    def index
        books = Book.all 
        render json: books
    end

    def show
        book = Book.find_by(title: params[:title])
        if book
            render json: book
        else
            render json: { error: 'Book not found.' }, status: 404
        end
    end
    
end
