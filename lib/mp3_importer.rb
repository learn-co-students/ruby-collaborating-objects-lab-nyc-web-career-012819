class MP3Importer
  @@file_list = []
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*.mp3") do |file|
      @@file_list << file[21..-1]
    end
    @@file_list
  end

  def import
    # binding.pry
    @@file_list.each do |file|
      Song.new_by_filename(file)
    end
  end
end
