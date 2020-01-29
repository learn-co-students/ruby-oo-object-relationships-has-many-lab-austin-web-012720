class Song
    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        @artist = Artist.new

        @@all << self
    end

    # Class Methods
    def self.all
        @@all
    end

    # Instance Methods
    def artist_name
        self.artist.name
    end

end