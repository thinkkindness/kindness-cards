class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :uid
      t.timestamps
    end
    
    add_index :cards, :uid, :unique => true
  end

  def self.down
    drop_table :cards
  end
end
