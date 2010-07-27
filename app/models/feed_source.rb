class FeedSource < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates_uniqueness_of :link
  has_many :feed_items
  has_and_belongs_to_many :lists
end