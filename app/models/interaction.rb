class Interaction < ActiveRecord::Base
  belongs_to :feed_item
  belongs_to :user
end
