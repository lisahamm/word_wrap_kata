require './lib/word_wrap'

describe "Word wrap" do
  it "should empty string" do
    expect(WordWrap.wrap("", 0)).to eq ""
  end
  it "should wrap a string shorter than the line length" do
    expect(WordWrap.wrap("hello", 6)).to eq "hello"
  end
  it "should wrap a word longer than the line length" do
    expect(WordWrap.wrap("hello", 3)).to eq "hel\nlo"
  end
  it "should wrap a word longer than 2 line lengths" do
    expect(WordWrap.wrap("hello", 2)).to eq "he\nll\no"
  end
  it "should wrap on a space" do
    expect(WordWrap.wrap("word word", 4)).to eq "word\nword"
  end
  it "should wrap on word boundry" do
    expect(WordWrap.wrap("word word", 6)).to eq "word\nword"
  end
  it "should wrap multiple words on the same line" do
    expect(WordWrap.wrap("word word four", 11)).to eq "word word\nfour"
  end
  it "should wrap multiple words on the same line" do
    expect(WordWrap.wrap("word word four four", 9)).to eq "word word\nfour four"
  end
end