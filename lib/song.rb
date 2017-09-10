class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def Song.create
    song = Song.new
    song.save
    song
  end

  def Song.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end
  def self.create_by_name(name)
    song = Song.new
    self.name = name
    self.create
    song

  end
end
