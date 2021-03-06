class Author 
  attr_accessor :name

  @@post_count = 0

  def initialize(name = nil)
    @name = name
    @posts = []
  end

  def add_post_by_title(post)
     post = Post.new(post)
     @posts << post
     @@post_count += 1
     post.author = self
  end

  def add_post(title)
    @posts << title
    title.author = self
    @@post_count += 1
  end
  
  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end
