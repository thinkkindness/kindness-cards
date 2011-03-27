require 'test_helper'

class CardTest < ActiveSupport::TestCase
  
  def setup
    @card = Factory(:card)
    @card.acts << Factory(:act)
  end
  
  def test_card_uid
    assert_respond_to @card, :uid
  end
  
  def test_has_acts_helper
    assert_respond_to @card, :has_acts?
    assert @card.has_acts?
  end
  
end
