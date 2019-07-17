class FavouriteTheoriesController < ApplicationController
    before_action :find_favourite_theory, only: [ :show, :destroy]
    before_action :find_theory, only: [:create, :destroy]
    before_action :find_user, only: [:create]

    def index
        favourite_theories = FavouriteTheory.all 
        render json: favourite_theories
    end

    def show
        render json: favourite_theory
    end 

    def create
        favourite_theory = FavouriteTheory.new(favourite_theory_params)
        if favourite_theory.valid?
            favourite_theory.save 
            render json: favourite_theory
        else
            render json: { error: 'Please try again'}
            #render the explicit error!
        end
    end

    def destroy 
        favourite_theory.destroy 
        render json: theory
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