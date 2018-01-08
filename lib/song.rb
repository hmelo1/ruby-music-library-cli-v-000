class Song
  attr_accessor :name
  @@all = []

  def initialize(song_name, artist_name = nil)
    @name = song_name
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

  def self.create(song_name)
    #song = Song.new(name)
    #song.save
    #song
    self.new(song_name).tap {|song| song.save}
  end
end
