class Author
    attr_accessor :name, :posts

    def initialize(name=nil)
        @name = name
    end

    # Class Methods
    def self.post_count
        Post.all.size
    end

    # Instance Methods
    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        self.add_post(Post.new(title))
    end

    def posts
        Post.all.select {|x| x.author == self}
    end
end
