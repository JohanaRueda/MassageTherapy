class StaticPagesController < ApplicationController
  include SessionsHelper
  
  # ROUTING
   # ROUTING
  def home
    if admin?
      redirect_to admin_active_path
    end
  end
  
  def courses
    if admin?
      redirect_to admin_active_path
    end
  end
  
  def contact

  end
  # END ROUTING
  
end