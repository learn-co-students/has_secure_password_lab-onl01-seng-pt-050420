class UsersController < ApplicationController

  def new 
    @user = User.new 
  end 
  
  def create 
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id 
      redirect_to user_path(@user)
    else 
      redirect_to new_user_path, alert: "Must have a valid username and/or password."
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