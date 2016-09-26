def substrings (str, dictionary_words)
  dictionary_words_counter = {}
  str_lowercase = str.downcase
  dictionary_words.each do |word|
    if str_lowercase.include? word
      dictionary_words_counter[word] = str_lowercase.scan(word).count
    end
  end
  p dictionary_words_counter
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)