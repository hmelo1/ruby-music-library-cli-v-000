class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create(name)
    #song = Song.new(name)
    #song.save
    #song
    self.new(name).tap {|artist| artist.save}
  end
end
