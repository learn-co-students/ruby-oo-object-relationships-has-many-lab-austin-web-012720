require 'pry'
class Artist
    attr_accessor :name, :songs

    
    

    def initialize(name)
        @name = name
        @songs = []
        
    end 

    def add_song(song)
        @songs << song
        song.artist = self
        #binding.pry
        
    end

    def songs
        Song.all
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        @songs << new_song
        new_song.artist = self
        
    end

    def self.song_count
        Song.all.size

    end 
end 

#binding.pry