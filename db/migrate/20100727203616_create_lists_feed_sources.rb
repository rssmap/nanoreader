class CreateListsFeedSources < ActiveRecord::Migration
  def self.up
    create_table :lists_feed_sources, :id => false do |t|
      t.integer :feed_source_id, :list_id
    end
  end

  def self.down
    drop_table :lists_feed_sources
  end
end
