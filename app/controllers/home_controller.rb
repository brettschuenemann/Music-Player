require 'youtube_it'
class HomeController < ApplicationController
  def index
  	song = params[:q]
 	client = YouTubeIt::Client.new
    cl = client.videos_by(:include => :most_viewed, :query=>song)
    url = cl.videos[0].player_url.split('=')[1]
    @songid = url.split('&')[0]
    @title = cl.videos[0].title

    if Song.where(:songid => @songid).size == 0
	    @s = Song.new(:name => @title, :songid => @songid)
    	@s.save
    end
  end

end
