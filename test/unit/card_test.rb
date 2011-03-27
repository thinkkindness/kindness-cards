require 'test_helper'

class CardTest < ActiveSupport::TestCase

  def setup
    @card = Card.new
  end

  test "serial_number is required" do
    assert_raise { @card.save! }
  end
end
