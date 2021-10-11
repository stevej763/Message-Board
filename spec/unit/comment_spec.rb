require 'domain/comment'

describe Comment do
  let(:subject) {described_class.new("This is a comment")}
  describe '#id' do
    it 'has a random ID string of length 10' do
      expect(subject.id.length).to eq 10
      expect(subject.id.class).to eq String
    end
  end
  describe '#comment' do 
    it 'has a comment string' do
      expect(subject.comment).to eq "This is a comment"
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