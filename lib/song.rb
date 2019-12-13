class Song
  @@all = []
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    contents = filename.split(" - ")
    songname = contents[1]
    artist = contents [0]
    genre = contents[2].delete_suffix(".mp3")
    s = Song.new(songname)
    s.artist = artist
    s.genre = genre
  end
end
