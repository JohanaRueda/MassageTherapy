class UsersController < ApplicationController
  def new
    @user= User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome " + @user.name 
      redirect_to @user
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def user_params
      params.require(:user).permit(:name, :email,:phone, :address, :admin, :license, :password,:password_confirmation)
  end
end
