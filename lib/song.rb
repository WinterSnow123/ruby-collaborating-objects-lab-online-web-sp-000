require 'pry'
class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
  song = filename.split(' - ')[1]
  song = Song.new(song)
  song.artist_name = split_file[0]
end


  def artist_name=(artist)
    this_artist = Artist.find_or_create_by_name(artist)
    self.artist=this_artist
  end

end
