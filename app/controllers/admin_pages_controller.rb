class AdminPagesController < ApplicationController
  include SessionsHelper
  include CoursesHelper
  
  # ROUTING
  def active_courses
    if !admin?
      redirect_to home_path
    end
  end
  
  def add_course
    if !admin?
      redirect_to home_path
    end
  end
  
  def edit_course
    if !admin?
      redirect_to home_path
    end
  end
  
  def delete_course
    if !admin?
      redirect_to home_path
    end
  end
  # END ROUTING
  
end