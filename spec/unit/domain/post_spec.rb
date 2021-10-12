require 'domain/post'

describe Post do
  let(:subject) { described_class.new("My Title", 123, "This is some content") }
  describe '#id' do
    it '#has a random ID string of length 10' do
      expect(subject.id.digits.length).to eq 8
      expect(subject.id.class).to eq Integer
    end
  end
  describe "#title" do
    it 'it has a title' do
      expect(subject.title).to eq "My Title"
    end
  end

  describe '#user_id' do
    it 'is linked to a user by a user ID' do
      expect(subject.user_id).to eq 123
    end
  end

  describe '#content' do
    it 'has some content' do 
      expect(subject.content).to eq "This is some content"
    end
  end

  describe '#comments' do
    it 'has no comments by default' do 
      expect(subject.comments).to eq []
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
