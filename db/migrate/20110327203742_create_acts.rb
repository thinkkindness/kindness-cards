class CreateActs < ActiveRecord::Migration
  def self.up
    create_table :acts do |t|
      t.integer :card_id
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :acts
  end
end
