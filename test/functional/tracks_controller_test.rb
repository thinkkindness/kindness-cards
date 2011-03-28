require 'test_helper'

class TracksControllerTest < ActionController::TestCase

  test "tracks routing, with Card" do
    assert_routing '/cards/xxx/tracks/new', { :controller => 'tracks',
                                              :action => 'new',
                                              :card_id => 'xxx' }
  end

  test "tracks routing, directly" do
    assert_routing '/tracks/xxx', { :controller => 'tracks',
                                              :action => 'show',
                                              :id => 'xxx' }
  end

  test "tracks#new routing" do
    assert_routing '/tracks/new', { :controller => 'tracks', :action => 'new' }
  end

end
