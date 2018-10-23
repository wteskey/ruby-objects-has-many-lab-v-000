class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
    @posts
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    new_post.author = self
    @posts << new_post
    @@post_count += 1
    @posts
  end

  def self.post_count
    @@post_count
  end

  def name
    @name
  end

end