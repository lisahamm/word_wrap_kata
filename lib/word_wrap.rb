module WordWrap
  def self.wrap(string, line_length)
    word_array = string.split
    string_result = ""
    word_array.each do |word|
      if (string_result + word).length < line_length
        string_result += " " + word
      else
        string_result += ("\n" + word)
      end
    end
    # string.gsub(' ', "\n")
    string_result.strip
  end
end