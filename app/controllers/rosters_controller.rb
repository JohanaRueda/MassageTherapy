class RostersController < ApplicationController
  def roster_params
    params.require(:roster).permit(:user_id, :offering_id)
  end

  def index
    @rosters = Roster.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @roster = Roster.new(roster_params)
    
    if @roster.save
      @offering = Offering.find(@roster.offering_id)
      flash[:success] = "Registered user " + @roster.user_id.to_s + " for course offering " + @roster.offering_id.to_s
      redirect_to course_path(@offering.course_id)
    end
  end

  def show
    @roster = Roster.find(params[:id])
  end

  def destroy
    @roster = Roster.find(params[:id])
    @roster.destroy
    flash[:notice] = "Roster '#{@roster.id}' deleted."
    redirect_to rosters_path
  end
  
  private
    def make_charge
      
    end
end
