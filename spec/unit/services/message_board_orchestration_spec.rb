require 'services/message_board_orchestration'
require 'domain/post'
require 'domain/comment'

describe MessageBoardOrchestration do
  let(:post1) { double :post1, id: "1" }
  let(:post2) { double :post2, id: "2" }
  let(:post1_comments) { [double(:post1_comment1, id: "1"), double(:post1_comment2, id: "1"), double(:post1_comment3, id: "1")] }
  let(:post2_comments) { [double(:post2_comment1, id: "2")] }
  let(:post_service) { double :post_service }
  let(:comment_service) { double :comment_service }
  let(:subject) { described_class.new(post_service, comment_service) }

  describe '#all_posts_with_comments' do
    it 'returns an array of composite posts' do
      expect(post_service).to receive(:all_posts).and_return([post1, post2])
      expect(comment_service).to receive(:comments_for_post).once.with(post1.id).and_return(post1_comments)
      expect(comment_service).to receive(:comments_for_post).once.with(post2.id).and_return(post2_comments)
      composite_post1 = CompositePost.new(post1, post1_comments)
      composite_post2 = CompositePost.new(post2, post2_comments)
      expect(subject.all_posts_with_comments).to eq [composite_post1, composite_post2]
    end
  end

  describe '#new_post' do
    it 'requests a new post be created' do
      title = "new title"
      content = "content"
      user_id = "1"
      expect(post_service).to receive(:new_post).with(an_instance_of(Post))
      subject.new_post(title, content, user_id)
    end
  end

  describe '#add_comment' do
    it 'requests a new comment be posted to a post' do
      content = "new comment"
      post_id = "12345678"
      user_id = "1"
      expect(comment_service).to receive(:add_comment).with(an_instance_of(Comment))
      subject.add_comment(content, post_id, user_id)
    end
  end

end
