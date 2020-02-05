class Author
  attr_accessor :name
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end 
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
  end

  def self.post_count
    Post.all.map do |post|
      post.author
    end.count
  end
end