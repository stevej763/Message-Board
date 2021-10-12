require_relative '../domain/composite_post'
require_relative '../domain/post'
require_relative '../domain/comment'

class MessageBoardOrchestration

  def initialize(post_service, comment_service)
    @post_service = post_service
    @comment_service = comment_service
  end

  def all_posts_with_comments
    posts = @post_service.all_posts
    composite_posts = posts.map do |post|
      comments = @comment_service.comments_for_post(post.id)
      CompositePost.new(post, comments)
    end
  end

  def new_post(title, content, user_id)
    post = Post.new(title, user_id, content)
    @post_service.new_post(post)
  end

  def add_comment(content, post_id, user_id)
    comment = Comment.new(content, post_id, user_id)
    @comment_service.add_comment(comment)
  end
end
