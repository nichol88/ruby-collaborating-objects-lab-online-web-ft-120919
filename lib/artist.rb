class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def songs
    Song.all.select{ |song| song.artist == self}
  end
end
