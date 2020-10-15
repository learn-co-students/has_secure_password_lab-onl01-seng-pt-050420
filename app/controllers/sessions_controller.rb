class SessionsController < ApplicationController
    def create
        # binding.pry
        @user = User.find_by(name: params[:user][:name])
        session[:user_id] = @user.id if @user.authenticate(params[:user][:password])
    end
end
