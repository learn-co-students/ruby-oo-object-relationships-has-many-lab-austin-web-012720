class Song

    @@all = []

    def self.all
        @@all
    end

    attr_reader :name, :artist
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
    end

    def artist_name
        if @artist != nil
            @artist.name
        end
    end
end