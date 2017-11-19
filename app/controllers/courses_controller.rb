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
      flash[:success] = "Created new course " + @course.courseName.to_s
      redirect_to @course
    end
  end

  def show
    @course = Course.find(params[:id])
    @offerings = Offering.where(course_id: params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:notice] = "Course '#{@course.id}' deleted."
    redirect_to courses_path
  end
  
  private
    def course_params
      params.require(:course).permit(:courseName, :courseDesc)
    end
end
