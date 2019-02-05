require 'pry'

class Artist

attr_accessor :name, :songs

@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  song.artist = self.name
  @songs << song
end

def save
  @@all << self
end

def self.find_or_create_by_name(artist)
  art_name = []
  Artist.all.select do |artist|
    art_name << artist.name
  end
  if art_name.uniq.include?(artist) == true
    Artist.all.select do |artist|
      artist.name == self.name
    end
  else
    Artist.new(artist)
  end
end

def print_songs
  self.songs.each do |song|
    puts song.name
  end
end


end
