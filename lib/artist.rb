class Artist

  attr_accessor :name, :artist, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    self.all.map do |artist_object|
      if artist_object.name == name
        artist_object
      else
        return Artist.new(name)
      end
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
