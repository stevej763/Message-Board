require 'services/comment_service'

describe CommentService do
  let(:comment_repository) { double :comment_repository }
  let(:subject) { described_class.new(comment_repository) }
  let(:comments) { [double(:comment1), double(:comment2), double(:comment3), double(:comment4)] }
  
  describe '#comments_for_post' do
    it 'returns a list of all Post objects' do
      post_id = 123
      expect(comment_repository).to receive(:find_all_comments_for_post).with(post_id).and_return(comments)
      expect(subject.comments_for_post(post_id)).to eq comments
    end
  end
end
