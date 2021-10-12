
class CompositePost
  attr_reader :post, :comments

  def initialize(post, comments)
    @post = post
    @comments = comments
  end

  def ==(other)
    if self.class == other.class
      return post == other.post && comments == other.comments
    end
    false
  end
end
