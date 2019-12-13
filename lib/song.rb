require 'pry'
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
    artist = contents [0]
    songname = contents[1]
    binding.pry
    s = Song.new(songname)
    binding.pry
    s.artist = artist
    s
  end
end
