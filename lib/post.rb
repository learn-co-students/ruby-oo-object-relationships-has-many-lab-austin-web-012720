class Post
  attr_accessor :author, :title

  @@all = []

  def initialize(title, author = nil)
    @title = title
    @author = Author.new(author)
    @@all << self
  end

  def author_name
    self.author.name
  end

  def self.all
    @@all
  end

end
