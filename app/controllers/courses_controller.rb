class CoursesController < ApplicationController
  public
  def index
    @courses = Course.all
  end

  def new
    # default: render 'new' template
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:success] = "Curso creado - '#{@course.courseName}'"
      redirect_to @course
    end
  end

  def show
    @course = Course.find(params[:id])
    @offerings = Offering.where(course_id: params[:id])
    if session[:user_id]
      @registered_offering_ids = Roster.where(user_id: session[:user_id], offering_id: @offerings).pluck(:offering_id)
      print @registered_offering_ids
    end
    
    @users = User.all
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(course_params)
      redirect_to course_path(@course)
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:notice] = "Curso'#{@course.id}' borrado."
    redirect_to courses_path
  end

  private
  def course_params
    params.require(:course).permit(:courseName, :courseDesc)
  end
end
