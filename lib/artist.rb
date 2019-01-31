class Artist

	attr_accessor :name

	@@all = []
	
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
		self.songs.each { |song| puts song.name }
	end

	def self.find_or_create_by_name(query_name)
		# Get a result
		result = Artist.all.map {|artist| artist.name}.find {|artist_name| artist_name == query_name}

		# If result == nil, no such artist exists, so create it and return it.
		# Else, get the artist object and return it.
		if result == nil
			Artist.new(query_name)
		else
			Artist.all.find { |artist| artist.name == result }
		end
	end

	def self.all
		@@all
	end

end