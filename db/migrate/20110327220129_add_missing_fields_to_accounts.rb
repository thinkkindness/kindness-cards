class AddMissingFieldsToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :name, :string
    add_column :accounts, :phone, :string
    add_column :accounts, :state, :string
  end

  def self.down
    remove_column :accounts, :name
    remove_column :accounts, :phone
    remove_column :accounts, :state
  end
end
