def substrings(word, dictionary)
  word = word.downcase
  result = Hash.new(0)

  dictionary.each {|string|
    string.downcase
    
    word_count = word.scan(string).size

    if word_count > 0
      result[string] = word_count
    end
  }

  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print substrings("Below", dictionary)