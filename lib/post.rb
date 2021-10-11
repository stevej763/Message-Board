require 'securerandom'

class Post
  attr_reader :id, :title, :content
  def initialize(title, content)
    @id = SecureRandom.hex(5)
    @title = title
    @content = content
  end
end