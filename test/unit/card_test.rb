require 'test_helper'

class CardTest < ActiveSupport::TestCase

  REQUIRED_FIELDS = { :serial_number => 'foo' }

  def setup
    @card = Card.new
  end

  test "serial_number is required" do
    assert_raise { @card.save! }
  end

  test "uniqueness of serial number" do
    Card.create!(:serial_number => 'foo')

    assert_raise {
      Card.create!(:serial_number => 'foo')
    }
  end

  test "track creation" do
    add_required_fields

    @card.save!

    @card.tracks.create!(TrackTest::REQUIRED_FIELDS)
  end

  private

    def add_required_fields
      @card.serial_number = 'foo'
    end

end
