require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = Factory(:user)
  end
  
  def test_user_name
    assert_respond_to @user, :name
    assert_match /Test User/, @user.name
  end

  def test_user_email
    assert_respond_to @user, :email
    assert_match /test-user.@example.com/, @user.email
  end
  
end
