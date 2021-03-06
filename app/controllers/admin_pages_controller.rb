class AdminPagesController < ApplicationController
  include SessionsHelper
  include CoursesHelper

  before_action :check_admin

  # ROUTING
  def active_courses
    @courses = Course.all
  end

  def add_course
  end

  def edit_course
  end

  def delete_course
  end

  # END ROUTING

  private

  def check_admin
    redirect_to home_path unless admin?
  end
end