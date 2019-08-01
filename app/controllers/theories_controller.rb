class TheoriesController < ApplicationController

    def index
        theories = Theory.all
        render json: theories
    end

    def show
        theory = Theory.find_by(name: params[:name])
        if theory
            render json: theory
        else
            render json: { error: 'Theory not found.'}, status: 404
        end
    end
end
