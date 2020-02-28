class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: users
    end

    def create
        user = Owner.create(params.require(:user).permit(:username, :password))
        render json: user
     end

     def user_params
        params.require(:user).permit(:username, :password)
    end

end

