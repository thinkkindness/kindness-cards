class AddTracksTable < ActiveRecord::Migration
  def self.up
    create_table :tracks do |t|
      t.integer :card_id
      t.string  :location
      t.string  :message

      t.timestamps
    end
  end

  def self.down
    drop_table :tracks
  end
end
