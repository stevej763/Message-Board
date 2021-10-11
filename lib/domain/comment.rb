require 'securerandom'

class Comment
  attr_reader :id, :comment, :likes, :dislikes
  def initialize(comment, likes = 0, dislikes = 0)
    @id = SecureRandom.hex(5)
    @comment = comment
    @likes = likes
    @dislikes = dislikes
  end
end
