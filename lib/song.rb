class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << @name
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
    new_song = Song.new(file_name.split(" - ")[1])
    new_artist = Artist.new(file_name.split(" - ")[0])

    new_artist.save
    new_artist.add_song(new_song)
    new_song.artist=new_artist
    new_song
    # binding.pry
  end
end
