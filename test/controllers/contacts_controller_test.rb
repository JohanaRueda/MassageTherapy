require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get new contact" do
    get contacts_new_url
    assert_response :success
  end

end
