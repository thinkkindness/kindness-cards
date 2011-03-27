class Track < ActiveRecord::Base

  belongs_to :card

  validates_presence_of :card_id, :location, :message => "can't be blank"

end
