require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar", phone: "8329644242", address: "145 my address", admin: "true", license: "MT111111")
  end
  
  test "should be valid" do 
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.name=""
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email=""
    assert_not @user.valid?
  end
  
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end
  
  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
  
  test "phone should be present" do
    @user.email=""
    assert_not @user.valid?
  end
  
  test "phone should be valid- no letters" do
    @user.email="2323i"
    assert_not @user.valid?
  end
  
  test "phone should be valid- 10 digits" do
    @user.email="232322888"
    assert_not @user.valid?
  end

  test "address should be present" do
    @user.address=""
    assert_not @user.valid?
  end
  
  test "admin should be present" do
    @user.admin=""
    assert_not @user.valid?
  end
  
end
