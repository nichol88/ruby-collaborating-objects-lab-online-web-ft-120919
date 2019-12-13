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

  def add_song(song)
    song.artist = self
  end

  def self.find_by_name(name)
    puts "finding by name: #{name}"
    a = @@all.select{ |artist|
      artist.name == name
    }
    a ? a : nil
  end

  def self.find_or_create_by_name(name)
    a = Artist.find_by_name(name)
    puts "result: #{a}"
    if a == nil
      Artist.new(name)
    else
      a
    end
  end
end
