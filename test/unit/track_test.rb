require 'test_helper'

class TrackTest < ActiveSupport::TestCase

  # simulate an object w/ valid fields
  REQUIRED_FIELDS = { :location => "Reno, NV" }

  def setup
    @track = Track.new
  end

  test "requires card" do
    assert_raise {
      @track.save!
    }
  end

  test "requires card (has card)" do
    card = Card.create!(CardTest::REQUIRED_FIELDS)

    track = card.tracks.create!(REQUIRED_FIELDS)
    assert_equal "Reno, NV", track.location
  end

end
