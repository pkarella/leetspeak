class String
  define_method(:leetspeak) do
    sentence_array = self.split()
    sentence_array.each() do |word|
      if word.include?("e")
        word.gsub!("e","3")
      end

      if word.include?("o")
        word.gsub!("o","0")
      end

      if word.include?("I")
        word.gsub!("I","1")
      end

      if word.include?("s")
        word.slice!(0)
        word.gsub!("s", "z")
      end
      "s" + word
    end
    sentence_array.join(" ")
  end
end
