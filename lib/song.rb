class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def new(name)
    Song.new(name)
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name

    if self.artist
      return self.artist.name
    else
      nil
    end
  end

end