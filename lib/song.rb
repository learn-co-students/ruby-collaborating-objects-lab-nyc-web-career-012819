require 'pry'

class Song
  attr_accessor :name, :artist
  # attr_writer :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(song)
    #store string
    artist = song.split(' - ')[0]
    songName = song.split(' - ')[1]

    #new Song instance with songName
    newSong = Song.new(songName)
    #new Artist instance with artist name
    newSong.artist = Artist.new(artist)

    #associate new song with its artist
    newSong.artist.songs << newSong.name
    # binding.pry
    #newSong.artist = Artist instance => .save to shovel into @@all.
    newSong.artist.save

    #returns created new song instance
    newSong
  end

end
