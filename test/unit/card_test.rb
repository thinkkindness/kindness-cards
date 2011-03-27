require 'test_helper'

class CardTest < ActiveSupport::TestCase
  
  def setup
    @card = Factory(:card)
  end
  
  def test_card_uid
    assert_respond_to @card, :uid
  end
  
end
