class Song < ActiveRecord::Base
	validates :name,  :presence => true
  	validates :songid, :presence => true
end
