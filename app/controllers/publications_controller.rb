class PublicationsController < ApplicationController
    before_action :find_publication, only: [:show]
    def index
        publications = Publication.all 
        render json: publications 
    end

    def show 
        render json: review
    end 

    private

    def find_publication
        publication = Publication.find_by(id: params[:id])
    end

end
