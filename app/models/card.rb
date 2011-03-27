class Card < ActiveRecord::Base

  validates_uniqueness_of :serial_number

  validates_presence_of :serial_number, :message => "can't be blank"

  has_many :tracks

  def to_param
    "#{serial_number.parameterize}"
  end

  def to_s
    "#{serial_number}"
  end

end
