class AddCardsTable < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :serial_number

      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
