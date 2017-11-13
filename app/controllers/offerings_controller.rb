class OfferingsController < ApplicationController
  def offering_params
    params.require(:offering).permit(:courseDate, :courseNotes, :coursePrice, :course_id)
  end

  def index
    @offerings = Offering.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @offering = Offering.new(offering_params)
    if @offering.save
      flash[:success] = "Added new offering for course " + @offering.course_id + " on " + @offering.courseDate
      redirect_to @offering
    end
  end

  def show
    @offering = Offering.find(params[:id])
  end

  def destroy
    @offering = Offering.find(params[:id])
    @offering.destroy
    flash[:notice] = "Offering '#{@offering.id}' deleted."
    redirect_to offerings_path
  end
end
