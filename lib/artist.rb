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

  def self.find_or_create_by_name(name)
    i = 0
    while i < @@all.length
      if @@all[i].name == name
        return @@all[i]
      else
        return Artist.new(name)
      end
    end
  end

end
