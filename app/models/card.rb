class Card
  include Mongoid::Document
  include Mongoid::Timestamps

  before_save :generate_id_from_vin

  field :serial_number, :required => true
  index :serial_number, :unique => true

  private

  def generate_id_from_serial_number
    self.id = serial_number.gsub(/[^A-Z0-9]/,'').squeeze('').gsub(/^\-|\-$/,'')
  end

end
