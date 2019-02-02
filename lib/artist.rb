require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << @name
  end

  def add_song(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    def songs
      Song.all
    end
binding.pry
  end


end
