class UsersController < ApplicationController

    def create
        @user = User.create(user_params)
        if @user.save && user_params[:password] == user_params[:password_confirmation]
            @user = User.find_by(name: user_params[:name])
            session[:user_id] = @user.id

            redirect_to '/'
        else
            redirect_to '/new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation, :password_digest)
    end
end