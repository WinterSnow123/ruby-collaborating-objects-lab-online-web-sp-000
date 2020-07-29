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
  filenames = []
  @files.split(' - ').map do |s|
      filenames << s[1]
    end
  filenames.each do |name|
    name = Song.new_by_filename(name)
  end
end

end
