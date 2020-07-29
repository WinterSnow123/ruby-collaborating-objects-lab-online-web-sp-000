require 'pry'
class MP3Importer

  attr_accessor :filename

  def initialize(filename)
    binding.pry
    @filename = filename
  end

def files

end

def import(filename)
  filename = Song.new(filename)
end

end
