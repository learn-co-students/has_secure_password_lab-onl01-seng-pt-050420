class UsersController < ApplicationController

    def new
    end

    def create
        # binding.pry
        if params[:user][:password] == params[:user][:password_confirmation]
            User.create(user_params)
            session[:user_id] = User.last.id
        else
            redirect_to new_user_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
