class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  # ROUTING
  def home
    case
      when user.admin
        admin_pages_active_courses
      else
        static_pages_home
    end
  end
  
  def courses
    case
      when user.admin
        admin_pages_active_courses
      else
        static_pages_courses
    end
  end
  
  def contact
    case
      when user.admin
        admin_pages_active_courses
      else
        static_pages_contact
    end
  end
  
  def login
    case
      when user.admin
        admin_pages_active_courses
      else
        static_pages_login
    end
  end
  # END ROUTING
  
  
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email)
    end
    
  #def create
  #  @user = User.new(user_params)
  #  if @user.save
  #    flash[:success] = "Welcome " + @user.name 
  #    redirect_to @user
  #  end
  #end
  
  def user_params
      params.require(:user).permit(:name, :email,:phone, :address, :admin, :license, :password,:password_confirmation)
  end
end
