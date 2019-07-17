class UsersController < ApplicationController
    before_action :find_user_by_id, only: [:edit, :show, :update, :destroy]
    
    def signup
        user = User.new(user_params)
        if user.valid?
            user.save
            render json: user
        else
            render json: { error: 'Please fill out all required fields and try again'}
            #render what was missing explicitely?
        end
    end

    def signin
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: {username: user.username, first_name: user.first_name, token: issue_token({ id: user.id })} #just sending the stuff that we need, the username to be greeted and the id for local storage
        else
            render json: { error: 'Invalid username/password combination'}, status: 401
        end
    end

    def validate
        user = get_current_user
        if user
            render json: { username: user.username, first_name: user.first_name, token: issue_token({id: user.id})}
        else
            render json: {error: 'User not found'}, status: 404
            #I don't want this to render all the time.
        end
    end

    def edit
    end

    def update
        user.update(user_params)
        if user.valid?
            render json: user
            #how do I render the user AND also an alert with the json thing 
        else
            render json: {error: "Update failed"}
        end
    end

    def show
        if user
            render json: user
        else 
            render json: { error: 'User not found'}, status: 404
        end
    end

    def destroy
        user.destroy
        render json: { notice: 'User deleted'}
    end


    private
    def user_params
        params.require(:user).permit(:username, :password, :first_name, :last_name, :bio, :photo)
    end

    def find_user_by_id
        user = User.find_by(id: params[:id])
    end
 

end
