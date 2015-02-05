require './lib/word_wrap'

describe "Word wrap" do
  it "should empty string" do
    expect(WordWrap.wrap("", 0)).to eq ""
  end
  it "should wrap a string shorter than the line length" do
    expect(WordWrap.wrap("hello", 6)).to eq "hello"
  end


end