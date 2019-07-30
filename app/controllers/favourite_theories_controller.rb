class FavouriteTheoriesController < ApplicationController
    before_action :find_favourite_theory, only: [:show]
    before_action :find_theory, only: [:create, :destroy]
    before_action :find_user, only: [:create]

    def index
        favourite_theories = FavouriteTheory.all
        render json: favourite_theories
    end

    def show
        # render json: favourite_theory
    end 

    def create
        favourite_theory = FavouriteTheory.create(favourite_theory_params)
        render json: favourite_theory
    end

    def destroy 
        favourite_theory = FavouriteTheory.find_by(theory_id: params[:theory_id], user_id: params[:user_id])
        favourite_theory.destroy 
        render json: { message: "author removed from liked authors"}
    end

    private

    def favourite_theory_params
        params.require(:favourite_theory).permit(:theory_id, :user_id)
    end

    def find_favourite_theory 
        favourite_theory = FavouriteTheory.find_by(id: params[:id])
    end

    def find_theory 
        theory = Theory.find_by(id: params[:id])
    end

    def find_user 
        user = User.find_by(id: params[:id])
    end

end