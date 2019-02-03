class Song
	
	attr_accessor :name, :artist

	@@all = []

	# Instance Methods **********************************************************

	def initialize(name)
		@name = name
		@@all << self
	end

	# Class Methods **********************************************************

	def self.new_by_filename(filename)
		#Grab artist string
		artist_string = MP3Importer.artist_in(filename)

		#Check if artist exists and get artist object
		artist = Artist.find_or_create_by_name(artist_string)
		artist.save
		
		#Grab song name from string
		song_name_string = MP3Importer.song_name_in(filename)

		#Make new song
		new_song = Song.new(song_name_string)
		new_song.artist = artist
		new_song
	end

	def self.all
		@@all
	end

end