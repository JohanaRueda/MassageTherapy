class AdminPagesController < ApplicationController
  # ROUTING
  def active_courses
    if admin?
      #admin_active_path
      render html: "why is this path being weird"
    else
      home_page_path
    end
  end
  
  def add_course
    case
      when current_user.admin
        admin_add_path
      else
        home_page_path
    end
  end
  
  def delete_course
    case
      when current_user.admin
        admin_delete_path
      else
        home_page_path
    end
  end
  
  def edit_course
    case
      when current_user.admin
        admin_delete_path
      else
        home_page_path
    end
  end

  # END ROUTING
  
end