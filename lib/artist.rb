require 'pry'
class Artist

attr_accessor :name, :songs

    @@song_count = 0

    def initialize(name)
        @name = name 
        @songs = []
    end

    def songs
        #get the ones that have an artis that matches the artist instance
        #pass block a using .select and x and the one that matches self
      
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        self.songs << song
        song.artist = self
        @@song_count += 1
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
        @@song_count += 1
    end

    def self.song_count
        Song.all.count
    end
end