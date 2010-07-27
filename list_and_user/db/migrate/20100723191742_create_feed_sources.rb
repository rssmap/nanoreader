class CreateFeedSources < ActiveRecord::Migration
  def self.up
    create_table :feed_sources do |t|
      t.string :link
      t.string :name
      t.string :ico
      t.timestamp :last_updated
      
      t.timestamps
    end
  end

  def self.down
    drop_table :feed_sources
  end
end
