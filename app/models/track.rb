# == Schema Information
#
# Table name: tracks
#
#  id         :integer         not null, primary key
#  card_id    :integer
#  location   :string(255)
#  message    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# This is the 'path' that a Card takes.
#
class Track < ActiveRecord::Base

  belongs_to :card

  validates_presence_of :card_id,
                        :location

end
