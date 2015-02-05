module WordWrap
  def self.wrap(string, line_length)
    return string if string.length <= line_length
    if string.index(' ') == nil
      string[0...line_length] + "\n" + wrap(string[line_length..-1].strip, line_length)
    else
      space_index = line_length - string[0..line_length].reverse.index(' ')
      if space_index != line_length
        string[0...space_index] + "\n" + wrap(string[space_index+1..-1].strip, line_length)
      else
        string[0...line_length] + "\n" + wrap(string[line_length..-1].strip, line_length)
      end
    end
  end
end