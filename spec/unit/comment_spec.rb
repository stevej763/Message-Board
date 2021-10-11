require 'comment'

describe Comment do
  let(:subject) {described_class.new("This is some content")}
  it '#id' do
    expect(subject.id.length).to eq 10
    expect(subject.id.class).to eq String
  end
  it '#comment' do 
    expect(subject.comment).to eq "This is some content"
  end
end