# == Schema Information
#
# Table name: accounts
#
#  id                   :integer         not null, primary key
#  name                 :string(255)
#  phone                :string(255)
#  email                :string(255)     default(""), not null, indexed
#  street               :string(255)
#  city                 :string(255)
#  state                :string(255)
#  zip                  :string(255)
#  logo                 :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#
# Indexes
#

class Account < ActiveRecord::Base
  validates_presence_of :name, :street, :city, :state, :zip
  attr_accessible :name, :street, :city, :state, :zip, :logo

  has_many :cards

end
