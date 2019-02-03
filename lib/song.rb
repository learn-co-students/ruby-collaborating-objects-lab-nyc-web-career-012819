class Song

  attr_accessor :name, :songs, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song = Song.new(file_name.split(" - ")[1])
    song.artist = Artist.new(file_name.split(" - ")[0])
    song.artist.songs << song.name
    binding.pry
    song.artist.save
    song
  end

end
