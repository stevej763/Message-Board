require 'securerandom'

class Comment
  include IdGenerator

  attr_reader :id, :post_id, :user_id, :content, :likes, :dislikes
  def initialize(content, post_id, user_id, likes = 0, dislikes = 0, id = IdGenerator.generate_id)
    @id = id
    @post_id = post_id
    @user_id = user_id
    @content = content
    @likes = likes
    @dislikes = dislikes
  end

  def ==(other)
    if self.class == other.class
      return id == other.id
    end
    false
  end
end
