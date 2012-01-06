require 'youtube_it'
class HomeController < ApplicationController
  def index
  	song = params[:q]
 	client = YouTubeIt::Client.new
    cl = client.videos_by(:include => :most_viewed, :query=>song)
    songid = cl.videos[0].player_url
    title = cl.videos[0].title
    puts title
    puts songid
  end

end
