require 'pry'

class MP3Importer

attr_accessor :path

def initialize(path)
  @path = path
end

def files
  Dir.entries(path).select do |entry|
    entry[-1] == "3"
  end
end
# binding.pry

def import
  files.each do |file|
    Song.new_by_filename(file)
  end
end



end
