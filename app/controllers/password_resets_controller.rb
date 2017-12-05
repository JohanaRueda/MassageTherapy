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
    #@user = User.find_by(email: params[:password_reset][:email].downcase)
    #if @user
    #  @user.create_reset_digest
    #  @user.send_password_reset_email
    #  flash[:info] = "Email enviado con instrucciones para desempaquetar password"
    #  redirect_to root_url
    #else
    #  flash.now[:danger] = "Dirección de email no existe"
    #  render 'new'
    #end
  end

  
  def update
    load_user_using_perishable_token
    @user.password = params[:password]

    if @user.save
      flash[:success] = "Your password was successfully updated"
      redirect_to @user
    else
      render :edit
    end
  end
  
  private
  
  def load_user_using_perishable_token
    @user = User.where(perishable_token: params[:token]).first
    unless @user
      flash[:error] = "We're sorry, but we could not locate your account"
      redirect_to root_url
    end
  end
    
   
end
