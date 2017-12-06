class PasswordResetsController < ApplicationController
  def new
  end
  
  def edit
    load_user_using_perishable_token
    @token = @user.perishable_token
  end

  def create
    user = User.where(email: params[:email]).first

    if user
      user.deliver_password_reset_instructions
      flash[:notice] = "Email enviado con instrucciones para desempaquetar password"
      redirect_to root_path
    else
      flash.now[:error] = "Dirección de email no existe"
      render :new
    end
  end

  
  def update
    load_user_using_perishable_token
    @user = User.where(perishable_token: params[:token]).first
    @user.password = params[:password]

    if @user.save
      flash[:success] = "Your password was successfully updated"
      #redirect_to @user
      log_in @user
    else
      render :edit
    end
  end
  
  private
  
  def load_user_using_perishable_token
    @user = User.where(perishable_token: params[:token]).first
    unless @user
      flash[:error] = "Perdone, no podemos encontrar su cuenta."
      redirect_to root_path
    end
  end
    
end
