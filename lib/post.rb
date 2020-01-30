class Post
    @@all = []

    def self.all
        @@all
    end

    attr_reader :title 
    attr_accessor :author

    def initialize(title)
        @title = title

        save
    end

    def save
        @@all << self
    end

    def author_name
        if self.author != nil
            self.author.name
        end
    end
end