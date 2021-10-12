require 'sinatra/base'
require './lib/domain/post'
require './lib/services/post_service'
require './lib/services/comment_service'
require './lib/services/message_board_orchestration'
require './lib/repositories/post_repository'
require './lib/repositories/comment_repository'
require './lib/domain/comment'
require './lib/domain/composite_post'

class MessageBoardApp < Sinatra::Base

  def initialize(app = nil, message_board_orchestration = MessageBoardOrchestration.new(PostService.new(PostRepository.new), CommentService.new(CommentRepository.new)))
    super(app)
    @message_board_orchestration = message_board_orchestration
  end

  get '/' do
    @composite_posts = @message_board_orchestration.all_posts_with_comments
    erb :index
  end

  post '/new-post' do
    puts params  
    redirect('/')
  end

  run! if app_file == $0
end
