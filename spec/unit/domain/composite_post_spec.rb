require 'domain/composite_post'

describe CompositePost do
  let(:post1) { double :post1 }
  let(:comment1) { double :comment1 }
  let(:comment2) { double :comment2 }
  let(:comment3) { double :comment3 }
  let(:subject) { described_class.new(post1, [comment1, comment2, comment3]) }

  describe '#post' do
    it 'contains a parent post' do
      expect(subject.post).to eq post1
    end
  end

  describe '#comments' do
    it 'contains a list of comments' do
      expect(subject.comments).to include(comment1, comment2, comment3)
    end
  end

  describe '#==' do
    it 'should return true if the two objects contain the same post and comments' do
      other = CompositePost.new(post1, [comment1, comment2, comment3])
      expect(subject == other).to eq true
    end
  end
  
end
