class StaticPagesController < ApplicationController
  include SessionsHelper
  
  # ROUTING
  def home
    if admin?
      admin_active_path
      #render html: "hello world what is going on?"
    else
      home_page_path
    end
  end
  
  def courses
    if logged_in?
      case
        when current_user.admin
          admin_active_path
        else
          courses_path
      end
    end
  end
  
  def contact
    if logged_in?
      case
        when current_user.admin
          admin_active_path
        else
          contact_path
      end
    end
  end
  
  def login
    if logged_in?
      case
        when current_user.admin
          admin_active_path
        else
          login_path
      end
    end
  end
  # END ROUTING
  
end