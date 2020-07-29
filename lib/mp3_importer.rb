require 'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

def files
@files = Dir.chdir(@path) {Dir.glob("*.mp3")}
end

def import
  binding.pry
  @files.map{|f| f.split(' - ')}
end

end
