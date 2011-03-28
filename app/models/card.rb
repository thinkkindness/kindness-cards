class Card < ActiveRecord::Base

  validates_uniqueness_of :serial_number

  validates_presence_of :serial_number, :message => "can't be blank"

  belongs_to :accounts
  has_many :tracks

  def to_s
    "#{serial_number}"
  end

end
