class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
		@files = []
	end

	def files
		@files = Dir.entries(self.path)
		@files.shift(2)
		@files
	end

	def import
		self.files.each { |filename| Song.new_by_filename(MP3Importer.remove_extension(filename)) }
	end

	# Helper methods to grab clean strings from filename
  def self.artist_in(filename)
  	filename.split(" - ")[0]
  end

  def self.song_name_in(filename)
  	filename.split(" - ")[1]
  end

  def self.remove_extension(filename)
  	array = filename.split(" - ")
  	array.pop
  	array.join(" - ")
  end
	
end