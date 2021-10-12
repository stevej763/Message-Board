require 'sinatra/base'
require './lib/domain/post'
require './lib/domain/comment'
require './lib/domain/composite_post'

class MessageBoardApp < Sinatra::Base
  get '/' do
    @posts = [
      Post.new("Post 1", 123, "This is some content", 999, 111),
      Post.new("Post 2", 123, "This is some content", 222, 555),
      Post.new("Post 3", 123, "This is some content", 123, 456),
      Post.new("Post 4", 123, "This is some content", 1, 2),
      Post.new("Post 5", 123, "This is some content", 3, 4)
    ]
    @comments = [
      Comment.new("This is the first comment on post 1", @posts[0].id, 456, 2021, 1000),
      Comment.new("This is the second comment on post 1", @posts[0].id, 456),
      Comment.new("This is the first comment on post 2", @posts[1].id, 456),
      Comment.new("This is the first comment on post 3", @posts[2].id, 456),
      Comment.new("This is the first comment on post 4", @posts[3].id, 456)
    ]

    @composite_posts = [
      CompositePost.new(@posts[0], [@comments[0], @comments[1]]),
      CompositePost.new(@posts[1], [@comments[2]]),
      CompositePost.new(@posts[2], [@comments[3]]),
      CompositePost.new(@posts[3], [@comments[4]]),
      CompositePost.new(@posts[4], [])
    ]
    erb :index
  end

  run! if app_file == $0
end
