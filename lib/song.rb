require 'pry'


class Song

attr_accessor :name, :artist

@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @artist = artist
  @@all << self
end

def self.new_by_filename(file)
  song = Song.new(file.split(" - ")[1])
  song.artist = Artist.new(file.split(" - ")[0])
  song.artist.songs << song.name
  song.artist.save
  song
end




end
