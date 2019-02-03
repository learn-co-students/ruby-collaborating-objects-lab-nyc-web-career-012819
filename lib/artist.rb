require "pry"

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    self.all.map do |artist|
      if artist.name == name
        artist
      else
        return Artist.new(name)
      end
    end
  end

  def print_songs
    self.songs.map do |song|
      puts song.name
    end
  end

  def self.all
    @@all
  end

end
