module WordWrap
  def self.wrap(string, line_length)
    return string if string.length <= line_length
    if string[0...line_length].index(" ") != nil
      space_index = (line_length-1) - string[0...line_length].reverse.index(" ")
      string[0...space_index] + "\n" + wrap(string[space_index+1..-1], line_length)
    elsif string[line_length] == " "
      string[0...line_length] + "\n" + wrap(string[line_length+1..-1], line_length)
    else
      string[0...line_length] + "\n" + wrap(string[line_length..-1], line_length)
    end
  end
end