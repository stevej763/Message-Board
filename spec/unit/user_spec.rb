require 'domain/user'

describe User do
  let(:subject) { described_class.new("Steve", "steve@fake_email.com", "password123") }
  
  describe '#id' do
    it '#has a random ID string of length 10' do
      expect(subject.id.length).to eq 10
      expect(subject.id.class).to eq String
    end
  end

  describe "#name" do
    it 'user has a name' do
      expect(subject.name).to eq "Steve"
    end
  end

  describe '#email' do
    it 'has an email' do 
      expect(subject.email).to eq "steve@fake_email.com"
    end
  end
end
