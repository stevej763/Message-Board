require 'repositories/comment_repository'

describe CommentRepository do
  let(:comment1) { Comment.new("comment1", 11111111, 456, 1, 1, 1) }
  let(:comment2) { Comment.new("comment2", 22222222, 456, 2, 2, 2) }
  let(:comment3) { Comment.new("comment3", 33333333, 456, 3, 3, 3) }
  describe '#find_all_comments_for_post' do
    it 'finds all comments for a given post id' do
      dto = [
        {"id"=>"1", "post_id"=>"11111111", "user_id"=>"456", "content"=>"comment1", "likes"=>"1", "dislikes"=>"1"},
        {"id"=>"2", "post_id"=>"22222222", "user_id"=>"456", "content"=>"comment2", "likes"=>"2", "dislikes"=>"2"},
        {"id"=>"3", "post_id"=>"33333333", "user_id"=>"456", "content"=>"comment3", "likes"=>"3", "dislikes"=>"3"}  
      ]
      expected = [comment1, comment2, comment3]
      expect(GenericDAO).to receive(:query).and_return(dto)
      expect(subject.find_all_comments_for_post(123)).to eq expected
    end
  end

end