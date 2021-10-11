require 'securerandom'

class Post
  attr_reader :id, :title, :content, :likes, :dislikes
  def initialize(title, content, likes = 0, dislikes = 0)
    @id = SecureRandom.hex(5)
    @title = title
    @content = content
    @likes = likes
    @dislikes = dislikes
  end
end