require './lib/word_wrap'

describe "Word wrap" do
  it "should wrap an empty string" do
    expect(WordWrap.wrap("", 1)).to eq ""
  end
  it "should wrap a string shorter than the line length" do
    expect(WordWrap.wrap("word", 10)).to eq "word"
  end
  it "should wrap a one word string longer than the line length onto the next line" do
    expect(WordWrap.wrap("word", 2)).to eq "wo\nrd"
  end
  it "should wrap a one word string longer than the line length onto multiple lines" do
    expect(WordWrap.wrap("onelongword", 2)).to eq "on\nel\non\ngw\nor\nd"
  end
  it "should wrap a string on word boundary" do
    expect(WordWrap.wrap("word word", 5)).to eq "word\nword"
  end
  it "should wrap a string after word boundary" do
    expect(WordWrap.wrap("word word", 6)).to eq "word\nword"
  end
  it "should wrap a string well before word boundary" do
    expect(WordWrap.wrap("word word", 3)).to eq "wor\nd\nwor\nd"
  end
  it "should wrap a string just before word boundary" do
    expect(WordWrap.wrap("word word", 4)).to eq "word\nword"
  end


end