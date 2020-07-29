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
    filename = Song.new(filename)
  end

  def artist_name=(artist)
    this_artist = Artist.find_or_create_by_name(artist)
    self.artist=this_artist
  end

end
