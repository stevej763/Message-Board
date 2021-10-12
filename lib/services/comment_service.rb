class CommentService
  def initialize(comment_repository)
    @comment_repository = comment_repository
  end

  def comments_for_post(post_id)
    @comment_repository.find_all_comments_for_post(post_id)
  end

  def add_comment(comment)
    @comment_repository.add_comment(comment)
  end
  
end
