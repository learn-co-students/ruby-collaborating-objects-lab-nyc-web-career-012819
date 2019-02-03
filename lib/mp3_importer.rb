class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @file_list = []
  end

  def files


    Dir.glob("#{@path}/*.mp3") do |file|
      @file_list << file[21..-1]
      # binding.pry
    end
    @file_list
  end

  def import
    # @file_list.each do |file|
    #   Song.new_by_filename(file)
    # end
  end
end
