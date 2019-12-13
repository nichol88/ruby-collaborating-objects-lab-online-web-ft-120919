class Song
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def save
    @@all << self
  end
end
