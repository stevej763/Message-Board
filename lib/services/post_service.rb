class PostService
  def initialize(post_repository)
    @post_repository = post_repository
  end

  def all_posts
    @post_repository.find_all_posts
  end

end
