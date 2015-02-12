require './lib/word_wrap'

describe WordWrap do
  it "does not wrap an empty string onto a newline" do
    expect(WordWrap.wrap("", 0)).to eq ""
  end

  it "does not wrap a string shorter than the line width onto a newline" do
    expect(WordWrap.wrap("word", 6)).to eq "word"
  end

  it "wraps a string longer than the line length" do
    expect(WordWrap.wrap("word", 2)).to eq "wo\nrd"
  end

  it "wraps a string longer than two line lengths" do
    expect(WordWrap.wrap("hello", 2)).to eq "he\nll\no"
  end

  it "wraps at word boundary" do
    expect(WordWrap.wrap("word word", 5)).to eq "word\nword"
  end

  it "wraps after word boundary" do
    expect(WordWrap.wrap("word word", 6)).to eq "word\nword"
  end

  it "wraps well before word boundary" do
    expect(WordWrap.wrap("word word", 3)).to eq "wor\nd\nwor\nd"
  end

  it "wraps just before word boundary" do
    expect(WordWrap.wrap("word word", 4)).to eq "word\nword"
  end
end