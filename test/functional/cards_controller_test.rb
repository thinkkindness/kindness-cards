require File.expand_path '../test_helper', File.dirname(__FILE__)

class CardsControllerTest < ActionController::TestCase

  test "cards#show routing" do
    assert_routing '/cards/xxx', { :controller => 'cards', :action => 'show', :id => 'xxx' }
  end

  test "cards#new routing" do
    assert_routing '/cards/new', { :controller => 'cards', :action => 'new' }
  end

end
