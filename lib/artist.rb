class Artist
  attr_accessor :name
  @@all = []

  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create(artist_name)
    #song = Song.new(name)
    #song.save
    #song
    self.new(artist_name).tap {|artist| artist.save}
  end

  def add_song(song)
    if song.artist == nil
      song.artist = self
    end
    @songs << song
  end
end
