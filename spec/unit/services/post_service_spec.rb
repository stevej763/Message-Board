require 'services/post_service'

describe PostService do
  let(:fake_post) { double :fake_post }
  let(:posts_repository) { double :posts_repository }
  let(:subject) { described_class.new(posts_repository) }
  let(:posts) { [double(:post1), double(:post2), double(:post3), double(:post4)] }
  
  describe '#all_posts' do
    it 'returns a list of all Post objects' do
      expect(posts_repository).to receive(:find_all_posts).and_return(posts)
      expect(subject.all_posts).to eq posts
    end
  end

  describe '#new_post' do
    it 'tells the repository to add a new post to the database' do
      expect(posts_repository).to receive(:add_post).with(fake_post).and_return(:ok)
      subject.new_post(fake_post)
    end
  end
end
