require 'post'

describe Post do
  let(:subject) {described_class.new("My Title", "This is some content")}
  it '#id' do
    expect(subject.id.length).to eq 10
    expect(subject.id.class).to eq String
  end
  it '#title' do
    expect(subject.title).to eq "My Title"
  end
  it '#content' do 
    expect(subject.content).to eq "This is some content"
  end
end