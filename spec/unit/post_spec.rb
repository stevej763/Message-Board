require 'domain/post'

describe Post do
  let(:subject) {described_class.new("My Title", "This is some content")}
  describe '#id' do
    it '#has a random ID string of length 10' do
      expect(subject.id.length).to eq 10
      expect(subject.id.class).to eq String
    end
  end
  describe "#title" do
    it 'it has a title' do
      expect(subject.title).to eq "My Title"
    end
  end
  describe '#content' do
    it 'has some content' do 
      expect(subject.content).to eq "This is some content"
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