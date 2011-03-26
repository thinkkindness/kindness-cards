class Track
  include Mongoid::Document
  include Mongoid::Timestamps

  field :location
  field :message

end
