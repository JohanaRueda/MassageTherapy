require 'test_helper'

class SessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @session = Session.new
  end
    
  test "should be existing username" do
    @user = User.find_by(id: session[:user_id])
    assert @user.valid?
  end
  
  test "username and password match" do
     
  end
 
end