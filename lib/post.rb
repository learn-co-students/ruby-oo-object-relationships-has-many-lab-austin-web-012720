class Post
    attr_accessor :author, :title

    # attr_writer :title

    @@all = []

    def initialize(title = nil)
        @title = title
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def author_name
        if self.author
           self.author.name
        else
            return nil
        end
    end

end