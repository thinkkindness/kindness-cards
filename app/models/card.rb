class Card
  include Mongoid::Document
  include Mongoid::Timestamps

  references_many :tracks, :inverse_of => :cards

  field :serial_number, :required => true
  index :serial_number, :unique => true

  def to_s
    "#{serial_number}"
  end

  private

  def generate_id_from_serial_number
    self.id = serial_number.gsub(/[^A-Z0-9]/,'').squeeze('').gsub(/^\-|\-$/,'')
  end

end
