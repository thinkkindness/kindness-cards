class AccountsCardsAssociations < ActiveRecord::Migration
  def self.up
    add_column :cards, :account_id, :integer
  end

  def self.down
    remove_column :cards, :account_id
  end
end
