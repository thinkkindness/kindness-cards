class Card < ActiveRecord::Base
  has_many :acts
  
  def has_acts?
    acts.present?
  end
end
