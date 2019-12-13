class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    @path.import("*.mp3")
  end
end
