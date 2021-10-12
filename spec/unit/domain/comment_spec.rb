require 'domain/comment'

describe Comment do
  let(:subject) { described_class.new("This is a comment", "123", "123") }
  describe '#id' do
    it 'has a random ID string of length 10' do
      expect(subject.id.length).to eq 10
      expect(subject.id.class).to eq String
    end
  end

  describe '#post_id' do
    it 'is linked to a post by a post ID' do
      expect(subject.user_id).to eq "123"
    end
  end

  describe '#user_id' do
    it 'is linked to a user by a user ID' do
      expect(subject.post_id).to eq "123"
    end
  end

  describe '#content' do 
    it 'has a comment string' do
      expect(subject.content).to eq "This is a comment"
    end
  end

  describe '#likes' do
    it 'has 0 likes by default' do 
      expect(subject.likes).to eq 0
    end
  end

  describe '#dislikes' do
    it 'has 0 dislikes by default' do 
      expect(subject.dislikes).to eq 0
    end
  end
end
