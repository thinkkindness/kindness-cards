# == Schema Information
#
# Table name: accounts
#
#  id                   :integer         not null, primary key
#  email                :string(255)     default(""), not null, indexed
#  encrypted_password   :string(128)     default(""), not null
#  reset_password_token :string(255)     indexed
#  remember_created_at  :datetime
#  sign_in_count        :integer         default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  street               :string(255)
#  city                 :string(255)
#  zip                  :string(255)
#  logo                 :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  name                 :string(255)
#  phone                :string(255)
#  state                :string(255)
#
# Indexes
#
#  index_accounts_on_reset_password_token  (reset_password_token) UNIQUE
#  index_accounts_on_email                 (email) UNIQUE
#

class Account < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  validates_presence_of :name
  attr_accessible :name, :street, :city, :state, :zip, :logo

  has_many :cards

  def admin?
    user_type == 'admin'
  end

end
