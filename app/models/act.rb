class Act < ActiveRecord::Base
  belongs_to :card
  belongs_to :user
  
  scope :recent, :order => 'acts.updated_at DESC', :limit => 10
end
