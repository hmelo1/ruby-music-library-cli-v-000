class Song
  attr_accessor :name
  @@all = []

  def initialize(song_name)
    @name = name
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
    self.new(name).tap {|song| song.save}
  end
end
