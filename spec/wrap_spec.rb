require './lib/word_wrap'

describe WordWrap do
  it "wraps an empty string" do
    expect(WordWrap.wrap("", 0)).to eq ""
  end

  it "wraps a string shorter than the line width" do
    expect(WordWrap.wrap("word", 6)).to eq "word"
  end

  it "wraps a one word string longer than one line width" do
    expect(WordWrap.wrap("word", 2)).to eq "wo\nrd"
  end

  it "wraps a one word string longer than two line widths" do
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