class AddUserTypeToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :user_type, :string
  end

  def self.down
    remove_column :accounts, :user_type
  end
end
