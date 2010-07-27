class User < ActiveRecord::Base
  has_and_belongs_to_many :feed_sources
  validates_uniqueness_of :username, :message => "Usuário já existe."
  
  validates_uniqueness_of :email, :message => "Email já cadastrado."
  
  has_many :feed_items, :through => :interactions
  
  has_many :lists, :through => :subscriptions
  
end
