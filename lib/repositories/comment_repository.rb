require 'pg'
require_relative './generic_dao'
require_relative '../domain/comment'
require_relative '../../database_connection_setup.rb'

class CommentRepository

  def find_all_comments_for_post(id)
    result = GenericDAO.query("SELECT * FROM comments WHERE post_id= #{id};")
    result.map do |comment| 
      Comment.new(comment['content'], comment['post_id'].to_i, comment['user_id'].to_i, comment['likes'].to_i, comment['dislikes'].to_i, comment['id'].to_i)
    end
  end
end