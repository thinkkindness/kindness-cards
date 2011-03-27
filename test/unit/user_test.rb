require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  describe "A user instance" do
    
     before do
      @user = Factory(:user)
    end
    
    it "must have a name" do
      @user.must_respond_to :name
      @user.name.must_equal "Test User 1"
    end
    
    it "must have an email" do
      @user.must_respond_to :email
      @user.email.must_equal "test-user1@example.com"
    end
    
    it "must do something else" do
      @user.must_respond_to :blah
    end
    
  end
  
end
