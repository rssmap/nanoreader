class List < ActiveRecord::Base
  has_many :constraints
  has_many :users, :through => :subscriptions
  has_and_belongs_to_many :feed_sources
end
