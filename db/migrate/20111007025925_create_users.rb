class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # Devise stuff
      t.encryptable
      t.confirmable
      t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      t.token_authenticatable

      t.string :user_type
      t.string :street
      t.string :city
      t.string :zip
      t.string :logo

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
