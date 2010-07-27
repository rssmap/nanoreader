require 'rss'
#require 'open-uri'




class ReaderController < ApplicationController
  
  def initialize
    @lists = {"meiobit" => "http://feeds.feedburner.com/meiobit"}
  end
  
  def index
    
  end
  
  def list
    
    source = params[:id]
    content = ""
    
    open(@lists[source]) do |s| content = s.read end
    
    rss = RSS::Parser.parse(content, true)

    @items = []
    rss.items.each do |item|
    
      @items << item

    end
    
  end

end
