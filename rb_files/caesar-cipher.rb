def caesar_cipher(string, number)
  new_word = ''
  new_letter = 0

  string.each_char {|c|
    if !(65 <= c.ord and c.ord <= 90) and !(97 <= c.ord and c.ord <= 122)
      new_word += c
    else
      new_letter = c.ord + number
      if (65 <= new_letter and new_letter <= 90) || (97 <= new_letter and new_letter <= 122)
        new_word += new_letter.chr
      else
        new_letter -= 26
        new_word += new_letter.chr
      end
    end
  }
  
  return new_word
end

