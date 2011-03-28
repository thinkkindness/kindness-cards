require 'test_helper'

class CardsControllerTest < ActionController::TestCase

  test "cards#show routing" do
    assert_routing '/cards/xxx', { :controller => 'cards', :action => 'show', :id => 'xxx' }
  end

  test "cards#new routing" do
    assert_raise {
      assert_routing '/cards/new', { :controller => 'cards', :action => 'new' }
    }
  end

  test "cards#new routing (only allowed w/in an Account)" do
    assert_routing '/accounts/xxx/cards/new', { :controller => 'cards',
                                                :action => 'new',
                                                :account_id => 'xxx' }
  end

end
