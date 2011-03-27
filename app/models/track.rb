class Track
  include Mongoid::Document
  include Mongoid::Timestamps

  referenced_in :card

  field :location
  field :message

end
