class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).select { |e| !File.directory?(e) }
  end

  def import
    self.files.each do |file|
      Song.new_by_filename file
    end
  end
end
