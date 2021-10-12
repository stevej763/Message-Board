require 'services/post_service'

describe PostService do
  let(:posts_repository) { double :posts_repository }
  let(:subject) { described_class.new(posts_repository) }
  let(:posts) { [double(:post1), double(:post2), double(:post3), double(:post4)] }
  
  describe '#all_posts' do
    it 'returns a list of all Post objects' do
      expect(posts_repository).to receive(:find_all_posts).and_return(posts)
      expect(subject.all_posts).to eq posts
    end
  end
end
