require_relative '../domain/composite_post'

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
end
