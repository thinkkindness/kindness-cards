require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  test "/learn routing" do
    assert_routing '/learn', { :controller => 'pages', :action => 'learn' }
  end

  test "/home routing" do
    assert_routing '/home', { :controller => 'pages', :action => 'home' }
  end

end
