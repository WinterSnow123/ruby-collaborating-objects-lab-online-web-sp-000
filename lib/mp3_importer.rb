require 'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = Dir.chdir(path) {Dir.glob("*.mp3")}
  end

def files
File.basename(@path)
end

def import
  filename = Song.new_by_filename(filename)
end

end
