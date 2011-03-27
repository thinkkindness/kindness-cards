class Track
  include Mongoid::Document
  include Mongoid::Timestamps

  identity :type => String

  field :card_id
  field :location
  field :message

  validates_presence_of :card_id, :location, :on => :create, :message => "can't be blank"

  def card
    Card.where(:id => card_id)
  end

end
