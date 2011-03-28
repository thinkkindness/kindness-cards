class AddUsersToActs < ActiveRecord::Migration
  def self.up
    add_column :acts, :user_id, :integer
  end

  def self.down
    remove_column :acts, :user_id
  end
end
