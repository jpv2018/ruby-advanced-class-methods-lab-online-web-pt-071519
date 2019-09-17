require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    song = self.new
    new_song.save
    new_song
  end
  
  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def self.new_by_name(song_name)
    new_song = Song.new
    new_song.name = (song_name)
  end
    
  def self.all
    @@all
  end
 
  def save
    self.class.all << self
  end
 
end