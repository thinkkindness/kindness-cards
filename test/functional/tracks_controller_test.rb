require File.expand_path '../test_helper', File.dirname(__FILE__)

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

end
