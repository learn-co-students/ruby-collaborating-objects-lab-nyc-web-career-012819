class Artist

	attr_accessor :name

	@@all = []
	
	# Instance methods **********************************************************

	def initialize(name)
		@name = name
	end

	def add_song(song)
		song.artist = self
	end

	def songs
		Song.all.select { |song| song.artist == self }
	end

	def save
		@@all << self
	end

	def print_songs
		songs.each { |song| puts song.name }
	end

	# Class methods **********************************************************

	def self.find_or_create_by_name(query_name)
		# Get a result
		result = all_artist_names.find {|artist_name| artist_name == query_name}

		# If result == nil, no such artist exists, so create it and return it.
		# Else, get the artist object and return it.
		result == nil ? Artist.new(query_name) : Artist.all.find { |artist| artist.name == result }
	end

	def self.all_artist_names
		Artist.all.map {|artist| artist.name}
	end

	def self.all
		@@all
	end

end