require 'repositories/post_repository'
require 'domain/post'

describe PostRepository do
  let(:post1) { Post.new("post1", 123,"content1", 1, 1, 1) }
  let(:post2) { Post.new("post2", 123,"content2", 1, 1, 2) }
  let(:post3) { Post.new("post3", 123,"content3", 1, 1, 3) }

  describe '#find_all_posts' do
    it 'returns all posts from the posts table' do
      dto = [
        {"id"=> "1", "user_id"=>"123", "title"=>"post1", "content"=>"content1", "likes"=>"1", "dislikes"=>"1"},
        {"id"=> "2", "user_id"=>"123", "title"=>"post2", "content"=>"content2", "likes"=>"2", "dislikes"=>"2"},
        {"id"=> "3", "user_id"=>"123", "title"=>"post3", "content"=>"content3", "likes"=>"3", "dislikes"=>"3"},
      ]
      
      expect(GenericDAO).to receive(:query).and_return(dto)
      expect(subject.find_all_posts).to include(post1, post2, post3)
    end
  end

end