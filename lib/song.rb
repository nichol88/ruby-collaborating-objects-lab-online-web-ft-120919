class Song
  @@all = []
  attr_accessor :name, :artist

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
    songname = filename.split(" - ")[1]
    Song.new(songname)
  end
end
