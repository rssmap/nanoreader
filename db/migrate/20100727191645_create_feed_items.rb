class CreateFeedItems < ActiveRecord::Migration
  def self.up
    create_table :feed_items do |t|
      t.timestamp :date
      t.string :title
      t.text :description
      t.string :creator
      t.text :content
      t.integer :feed_source_id
      t.timestamps
    end
  end

  def self.down
    drop_table :feed_items
  end
end
