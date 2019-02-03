require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # @@all << @name
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.find do |artist|
      if artist.name != name
        new_artist = Artist.new(name)
        @@all << new_artist
      end
    end
  end


  def print_songs
    list = ""

    @songs.map do |song|
      list += "#{song.name}\n"
    end
    puts "#{list}"
  end
end
