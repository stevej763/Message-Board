require 'securerandom'

class Post
  attr_reader :id, :user_id, :title, :content, :comments, :likes, :dislikes
  def initialize(title, user_id, content, likes = 0, dislikes = 0)
    @id = SecureRandom.hex(5)
    @user_id = user_id
    @title = title
    @content = content
    @likes = likes
    @dislikes = dislikes
    @comments = []
  end
end
