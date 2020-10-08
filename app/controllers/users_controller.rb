class UsersController < ApplicationController

    def new 
        @user = User.new
    end 

    def create 
        if params[:password] != params[:password_confirmation]
            render:new
        else
        @user = User.new(user_params)
        end 

        if @user.save 
            session[:user_id] = @user.id 
            redirect_to @user
        else 
            render :new
        end 
    end 

    def show 
        @user = User.find(params[:id])
    end 

    private 

    def user_params 
        params.require(:user).permit(:name, :password, :password_confirmation)
    end 
end
