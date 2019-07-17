class AuthorsController < ApplicationController
    
    def index
        author = Author.all
    end

    def show
        author = Author.find_by(id: params[:id])
    end

end
