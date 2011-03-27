require 'test_helper'

class ActTest < ActiveSupport::TestCase

  def setup
    @act = Factory(:act)
  end
  
  def test_description
    assert_respond_to @act, :description
  end
  
  def test_associated_card
    assert_respond_to @act, :card
    assert_equal Card, @act.card.class
  end
  
end
