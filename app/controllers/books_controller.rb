class BooksController < ApplicationController

    def index
        book = Book.all 
    end

    def show
        book = Book.find_by(id: params[:id])
    end
    
end
