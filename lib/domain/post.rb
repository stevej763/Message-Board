require 'securerandom'
require_relative '../services/id_generator'

class Post
  include IdGenerator
  attr_reader :id, :user_id, :title, :content, :comments, :likes, :dislikes
  def initialize(title, user_id, content, likes = 0, dislikes = 0, id = IdGenerator.generate_id)
    @id = id
    @user_id = user_id
    @title = title
    @content = content
    @likes = likes
    @dislikes = dislikes
    @comments = []
  end

  def ==(other)
    if self.class == other.class
      return id == other.id
    end
    false
  end
end
