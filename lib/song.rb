class Song
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

  def create(name)
    @name = name
    @@all << self
  end
end


blah = Song.create("Blah")
puts "test #{blah.all}"
