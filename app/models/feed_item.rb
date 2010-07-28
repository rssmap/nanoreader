class FeedItem < ActiveRecord::Base
  belongs_to :feed_source
  has_many :user, :through => :interactions
end
