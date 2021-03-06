class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  include SessionsHelper
  include CoursesHelper

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.csv {send_data @users.to_csv}
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @offering_ids = Roster.where(user_id: @user).pluck(:offering_id)
    @active_offerings = []
    @past_offerings = []
    unless @offering_ids.empty?
      @active_offerings = Offering.where('id IN (?) AND ("courseDate" > ? OR ("courseDate" = ? AND "courseTime" >= ?))', @offering_ids, Date.today, Date.today, Time.now.strftime("2000-01-01 %H:%M:00"))
      @past_offerings = Offering.where('id IN (?) AND ("courseDate" < ? OR ("courseDate" = ? AND "courseTime" < ?))', @offering_ids, Date.today, Date.today, Time.now.strftime("2000-01-01 %H:%M:00"))
    end
  end

  # GET /users/new
  def new
    @user = User.new
    @user.admin = false
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        log_in @user
        ExampleMailer.sample_email(@user).deliver
        format.html {redirect_to @user, notice: 'Usuario creado exitosamente.'}
        format.json {render :show, status: :created, location: @user}
      else
        format.html {render :new}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html {redirect_to @user, notice: 'Usuario actualizado exitosamente.'}
        format.json {render :show, status: :ok, location: @user}
      else
        format.html {render :edit}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html {redirect_to users_url, notice: 'Usuario borrado.'}
      format.json {head :no_content}
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

  def user_params
    params.require(:user).permit(:name, :email, :phone, :address, :admin, :license, :password, :password_confirmation)
  end
end
