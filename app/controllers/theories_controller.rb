class TheoriesController < ApplicationController

    def index
        theories = Theory.all
    end

    def show
        theory = Theory.find_by(id: params[:id])
    end
end
