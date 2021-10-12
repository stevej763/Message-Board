require 'pg'
require_relative './generic_dao'
require_relative '../domain/post'
require_relative '../../database_connection_setup.rb'

class PostRepository

  def find_all_posts
    result = GenericDAO.query('SELECT * FROM posts;')
    result.map do |post| 
      Post.new(post['title'], post['user_id'].to_i, post['content'], post['likes'].to_i, post['dislikes'].to_i, post['id'].to_i)
    end
  end

  def add_post(post)
    result = GenericDAO.query("INSERT INTO posts VALUES (#{post.id}, #{post.user_id}, '#{post.title}', '#{post.content}', #{post.likes}, #{post.dislikes});")
  end
end