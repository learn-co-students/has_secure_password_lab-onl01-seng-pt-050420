class UsersController < ApplicationController

    def new
    end

    def homepage
        @user = User.find_by(id: session[:user_id])
    end

    def create
        User.create(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
