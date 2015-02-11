class String
  def last_index_of(character)
    (self.length - 1) - self.reverse.index(character)
  end

  def remainder_from(index)
    self[index..-1]
  end

  def substring(start_index, end_index)
    self[start_index..end_index]
  end
end

module WordWrap
  def self.wrap(string, line_width)
    return string if string.length <= line_width
    substring = string.substring(0, line_width-1)
    end_index = substring.index(" ") != nil ? substring.last_index_of(" ") : line_width
    breakline(string, end_index, line_width)
  end

  def self.breakline(string, end_index, line_width)
    string[0...end_index] + "\n" + wrap(string.remainder_from(end_index).strip, line_width)
  end
end

