class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    basedir = @path
    @files = ("*.mp3")
  end
end
