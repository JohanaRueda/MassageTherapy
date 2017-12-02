class OfferingsController < ApplicationController
  def offering_params
    params.require(:offering).permit(:courseDate, :courseTime, :courseNotes, :coursePrice, :course_id)
  end

  def index
    @offerings = Offering.all
  end

  def new
    # default: render 'new' template
    @course_id = params[:course_id]
  end

  def create
    @offering = Offering.new(offering_params)
    # @offering.courseDate = (@offering.courseDate.to_time - 6.hours).to_datetime

    if @offering.save
      flash[:success] = "Clase agregada exitosamente '#{@offering.course_id}' on '#{@offering.courseDate}'"
      redirect_to course_path(@offering.course_id)
    end
  end

  def show
    @offering = Offering.find(params[:id])
  end

  def edit
    @offering = Offering.find(params[:id])
  end

  def update
    @offering = Offering.find(params[:id])
    if @offering.update_attributes(offering_params)
      redirect_to course_path(@offering.course_id)
    else
      render 'edit'
    end
  end

  def destroy
    @offering = Offering.find(params[:id])
    @offering.destroy
    flash[:notice] = "Clase '#{@offering.courseDate}' borrada."
    redirect_to course_path(@offering.course_id)
  end
end
