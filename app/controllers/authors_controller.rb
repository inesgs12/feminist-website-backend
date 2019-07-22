class AuthorsController < ApplicationController
    
    def index
        authors = Author.all
        render json: authors
    end

    def show
        author = Author.find_by(name: params[:name])
        if author
            render json: author
        else
            render json: { error: 'Author not found.'}, status: 404
        end
    end

end
