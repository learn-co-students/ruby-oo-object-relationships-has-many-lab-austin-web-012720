#an individual author will need a method that returns a collection of all the posts that belong to that author.
class Author

    attr_accessor :name, :post

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
        post.author = self
     end

 def posts
    Post.all
 end

 def add_post_by_title(post_name)
        post = Post.new(post_name)
        post.author = self
 end

 def self.post_count
    Post.all.count
end

end