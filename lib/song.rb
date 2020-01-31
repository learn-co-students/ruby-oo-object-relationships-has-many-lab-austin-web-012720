#Will need to have attr_accessor :artist OR artist=() and artist method
#Will need a class  varialbe that holds all instances of every song that's been creat4ed in an array
#To access this array,the song class will also need a class method that returns the class variable holding those instances.

class Song

attr_accessor :name, :artist

    @@all = []
   
    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all 
        @@all
    end

    def artist_name
        
        if !self.artist
            nil
        else
            self.artist.name
        end
    end

end