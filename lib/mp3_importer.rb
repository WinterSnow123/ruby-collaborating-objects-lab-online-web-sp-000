require 'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = self.files
  end

def files
@files = Dir.chdir(@path) {Dir.glob("*.mp3")}
end

def import
  filenames = []
  split_files = []
  @files.map do |f|
    split_files << f.split(' - ')
  end
  split_files.each do |s|
    filenames << s[1]
    end
  filenames.each do |name|
    name = Song.new_by_filename(name)
  end
end

end
