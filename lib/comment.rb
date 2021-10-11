require 'securerandom'

class Comment
  attr_reader :id, :comment
  def initialize(comment)
    @id = SecureRandom.hex(5)
    @comment = comment
  end
end