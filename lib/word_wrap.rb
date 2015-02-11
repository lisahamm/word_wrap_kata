class String
  def last_index_of(character)
    (self.length - 1) - self.reverse.index(character)
  end

  def remainder_from(index)
    self[index..-1]
  end
end

module WordWrap
  def self.wrap(string, line_width)
    return string if string.length <= line_width
    if string[0...line_width].index(" ") != nil
      space_index = string[0...line_width].last_index_of(" ")
      string[0...space_index] + "\n" + wrap(string.remainder_from(space_index+1), line_width)
    elsif string[line_width] == " "
      string[0...line_width] + "\n" + wrap(string.remainder_from(line_width+1), line_width)
    else
      string[0...line_width] + "\n" + wrap(string.remainder_from(line_width), line_width)
    end
  end
end

