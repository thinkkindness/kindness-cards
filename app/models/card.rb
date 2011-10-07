# == Schema Information
#
# Table name: cards
#
#  id            :integer         not null, primary key
#  serial_number :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  account_id    :integer
#

class Card < ActiveRecord::Base

  validates_uniqueness_of :serial_number

  validates_presence_of :serial_number

  belongs_to :accounts
  has_many :tracks

  attr_accessible :serial_number

  def to_s
    "#{serial_number}"
  end

end
