class SessionsController < ApplicationController
  include SessionsHelper

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      # redirect_to @user
      redirect_to root_path
    else
      flash.now[:danger] = 'Error en email/password'
      render 'new'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
