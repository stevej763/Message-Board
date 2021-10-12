class PostService
  def initialize(posts_repository)
    @posts_repository = posts_repository
  end

  def all_posts
    @posts_repository.find_all_posts
  end
  
end
