require File.expand_path '../test_helper', File.dirname(__FILE__)

class CardsControllerTest < ActionController::TestCase

  test "cards" do
    assert_routing '/cards/new', { :controller => 'cards', :action => 'new' }
  end

end
