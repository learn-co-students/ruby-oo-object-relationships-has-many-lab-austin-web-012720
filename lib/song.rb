class Song
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def artist_name
        if self.artist
            self.artist.name
        else return nil
        end
    end

end