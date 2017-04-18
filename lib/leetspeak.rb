class String
  define_method(:leetspeak) do
    word = self.split("")
    new_word = []

    word.each_with_index do |i, index|
      if i == "e"
        new_word.push("3")
      elsif i == "o"
        new_word.push("0")
      elsif i == "I"
        new_word.push("1")
      elsif (i == "s") && index != 0 && self[index-1] != " "
        new_word.push("z")
      else
        new_word.push(i)
      end
    end
    new_word.join
  end
end
