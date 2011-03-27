class Card
  include Mongoid::Document
  include Mongoid::Timestamps

  identity :type => String

  field :serial_number
  index :serial_number, :unique => true

  validates_presence_of :serial_number, :on => :create, :message => "can't be blank"

  def to_param
    "#{serial_number.parameterize}"
  end

  def to_s
    "#{serial_number}"
  end

  def tracks
    Track.where(:card_id => id)
  end

end
