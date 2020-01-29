class Artist
    attr_accessor :name

    def initialize(name=nil)
        @name = name
    end

    # Class Methods
    def self.song_count
        Song.all.size
    end

    # Instance Methods
    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        self.add_song(Song.new(name))
    end

    def songs
        Song.all.select{|x| x.artist == self}
    end

end