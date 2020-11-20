class StaticpagesController < ApplicationController
  require 'flickr'

  def index 
    flickr = Flickr.new 
    username = params[:username]
    user = flickr.people.findByUsername :username => username
    userid = user.id 

    if user.nil? 
      @photos = []
    else 
      @photos = flickr.people.getPublicPhotos :user_id => userid
    end

  end

  def show
    
  end
end
