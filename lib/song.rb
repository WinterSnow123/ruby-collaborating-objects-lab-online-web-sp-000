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

  def new_by_filename(filename)
    binding.pry
    split_file = []
    filename.map do |f|
      split_file << f.split(' - ')
    end
  song = split_file[1]
  song = Song.new(song)
  song.artist_name = split_file[0]
end


  def artist_name=(artist)
    this_artist = Artist.find_or_create_by_name(artist)
    self.artist=this_artist
  end

end
