class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
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
    self.new(name).tap {|genre| genre.save}
  end
end
