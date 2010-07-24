class CreateFeedSourcesUsers < ActiveRecord::Migration
  def self.up
    create_table :feed_sources_users, :id => false do |t|
      t.integer :feed_source_id, :user_id
    end
  end

  def self.down
    drop_table :feed_sources_users
  end
end
