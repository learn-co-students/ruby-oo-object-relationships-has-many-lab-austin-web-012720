#An individual post will need to hold a reference to the author it belongs to, meaning it will need to have an author=() and author method. 

class Post 

attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all 
        @@all 
    end

    def author_name 
        if !self.author
            nil
        else
            self.author.name
        end
    end
end