class Card < ActiveRecord::Base
  has_many :acts

  def has_acts?
    acts.count > 0
  end
end
