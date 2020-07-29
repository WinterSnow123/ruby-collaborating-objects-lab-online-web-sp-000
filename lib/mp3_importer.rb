require 'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

def files
File.basename(Dir.chdir(path) {Dir.glob("*.mp3")})
end

def import
  filename = Song.new_by_filename(filename)
end

end
