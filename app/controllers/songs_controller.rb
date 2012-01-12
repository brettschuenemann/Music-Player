require 'youtube_it'
class SongsController < ApplicationController
def index
    song = params[:q]
  client = YouTubeIt::Client.new
    cl = client.videos_by(:include => :most_viewed, :query=>song)
    songid = cl.videos[0].player_url
    title = cl.videos[0].title
    s = Song.new(:name => title, :songid => songid)
    s.save
    end 
end
