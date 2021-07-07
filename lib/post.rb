class Post
    attr_accessor :title, :author

    @@all = []

    def initialize(title, author=nil)
        @title = title
        @author = Author.new(author)

        @@all << self
    end

    # Class Methods
    def self.all
        @@all
    end

    # Instance Method
    def author_name
        self.author.name
    end

end
