class Track
  include Mongoid::Document
  include Mongoid::Timestamps

  identity :type => String

  field :card_id
  field :location
  field :message

  validates_presence_of :card_id, :location, :message => "can't be blank"

  def card
    Card.find(card_id.to_s)
  end

end
