require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @files = Dir.chdir(path) {Dir.glob("*.mp3")}
    binding.pry
  end

def files

end

def import(filename)
  filename = Song.new_by_filename(filename)
end

end
