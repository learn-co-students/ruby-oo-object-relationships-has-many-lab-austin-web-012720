class Post
  attr_accessor :title, :author

  @@all = []
  
  def self.all
    @@all
  end

  def initialize(title)
    @title = title

    self.class.all << self
  end

  def author_name
    if author
      author.name
    end
  end
end