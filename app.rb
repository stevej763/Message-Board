require 'sinatra/base'
require './lib/domain/post'


class MessageBoardApp < Sinatra::Base
  get '/' do
    @posts = [
      Post.new("Post 1", "This is some content"),
      Post.new("Post 2", "This is some content"),
      Post.new("Post 3", "This is some content"),
      Post.new("Post 4", "This is some content"),
      Post.new("Post 5", "This is some content")
    ]
    erb :index
  end

  run! if app_file == $0
end
