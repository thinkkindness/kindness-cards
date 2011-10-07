class RemoveOldFieldsFromAccounts < ActiveRecord::Migration
  def self.up
    remove_column :accounts, :current_sign_in_at
    remove_column :accounts, :current_sign_in_ip
    remove_column :accounts, :email
    remove_column :accounts, :encrypted_password
    remove_column :accounts, :last_sign_in_at
    remove_column :accounts, :last_sign_in_ip
    remove_column :accounts, :remember_created_at
    remove_column :accounts, :reset_password_token
    remove_column :accounts, :sign_in_count
    remove_column :accounts, :user_type
  end

  def self.down
    add_column :accounts, :current_sign_in_at
    add_column :accounts, :current_sign_in_ip
    add_column :accounts, :email
    add_column :accounts, :encrypted_password
    add_column :accounts, :last_sign_in_at
    add_column :accounts, :last_sign_in_ip
    add_column :accounts, :remember_created_at
    add_column :accounts, :reset_password_token
    add_column :accounts, :sign_in_count
    add_column :accounts, :user_type
  end
end
