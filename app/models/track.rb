# This is the 'path' that a Card takes.
#
class Track < ActiveRecord::Base

  belongs_to :card

  validates_presence_of :card_id, :location, :message => "can't be blank"

  attr_accessor :serial_number # REMOVE ME

end
