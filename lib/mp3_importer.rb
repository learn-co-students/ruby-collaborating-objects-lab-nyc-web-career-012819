require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).select { |song| song.include?(".mp3")}
  end

  def import
    files.map { |song| Song.new_by_filename(song) }
  end

end
