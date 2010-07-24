class UserAccountController < ApplicationController

  def index
    @users = User.find(:all)
  end
  
  def show_user
    @user = User.find(params[:id])
  end 
  
  def add_user
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save then
      redirect_to :action => "index"
    else
      redirect_to :action => "add_user"
    end    
  end
  
  def edit_user
    @user = User.find(params[:id])
  end
  
  def update 
    @user = User.find(params[:id])
    
    if @user.update_attributes(params[:user])
      redirect_to :action => "index"
    else
      redirect_to :action => "edit_user", :id => @user
    end
  end
  
  def delete_user
    User.destroy params[:id]
    redirect_to :action => "index"
  end
    
  def add_feed_source
    @feed_source = FeedSource.new
    @user_id = params[:id]
  end
  
  def add_feed_to_user
    feed_sources = FeedSource.find(:all, :conditions => { :link => params[:feed_source][:link] })
    
    if feed_sources.empty?
      @feed_source = FeedSource.new(params[:feed_source])
      @feed_source.last_updated = Time.now
    else
      @feed_source = feed_sources.first      
    end
    
    @user = User.find( params[:id] )
    unless @feed_source.users.include? @user
      @feed_source.users << @user
    end
    
    if @feed_source.save
      redirect_to :action => "show_user", :id => params[:id]
    else
      redirect_to :action => "add_feed_source", :id => params[:id]
    end    
    
  end
  
  def delete_feed_source
    @user = User.find(params[:user_id])
    @feed_source = FeedSource.find(params[:feed_source_id])
    @user.feed_sources.delete(@feed_source)
    if @feed_source.users.empty?
      @feed_source.destroy
    end
    
    redirect_to :action => "show_user", :id => params[:user_id]
  end
  
end
