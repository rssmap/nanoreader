class CreateInteractions < ActiveRecord::Migration
  def self.up
    create_table :interactions do |t|
      t.integer :feed_item_id, :user_id
      t.boolean :read, :default => false
      t.boolean :starred, :default => false      
      t.timestamps
    end
  end

  def self.down
    drop_table :interactions
  end
end
