require './lib/word_wrap'

describe "Word wrap" do
  it "should empty string" do
    expect(WordWrap.wrap("", 0)).to eq ""
  end
  it "should wrap a string shorter than the line length" do
    expect(WordWrap.wrap("hello", 6)).to eq "hello"
  end
  it "should wrap on a space" do
    expect(WordWrap.wrap("HELLO HELLO", 7)).to eq "HELLO\nHELLO"
  end
  it 'should wrap on multiple spaces' do
    expect(WordWrap.wrap('HELLO HELLO HELLO', 7)).to eq "HELLO\nHELLO\nHELLO"
  end
  it 'should wrap on spaces when the following word extends longer than specified length' do
    expect(WordWrap.wrap('Hello world hello', 13)).to eq "Hello world\nhello"
  end

end