class Act < ActiveRecord::Base
  belongs_to :card
  
  scope :recent, :order => 'acts.updated_at DESC', :limit => 10
  
end
