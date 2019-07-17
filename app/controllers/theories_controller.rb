class TheoriesController < ApplicationController

    def index
        theories = Theory.all
        render json: theories
    end

    def show
        theory = Theory.find_by(id: params[:id])
        render json: theory
    end
end
