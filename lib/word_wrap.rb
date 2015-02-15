class WordWrapException < ArgumentError; end

class String
  def last_index_of(character)
    (length - 1).downto(0) {|i| return i if self[i] == character}
    nil
  end

  def rest_from(index)
    self[index..-1]
  end

  def substring(start_index=0, end_index)
    self[start_index..end_index]
  end
end

module WordWrap
  def self.wrap(string, line_width)
    raise WordWrapException.new("String is nil") if string == nil
    return string if string.length <= line_width
    substring = string.substring(line_width-1)
    end_index = has_a_space?(substring) ? substring.last_index_of(" ") : line_width
    string.substring(end_index-1) + "\n" + wrap(string.rest_from(end_index).strip, line_width)
  end

  def self.has_a_space?(string)
    string.index(" ") != nil
  end
end

