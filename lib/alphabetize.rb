def alphabetize(arr)
  arr.sort{|word1, word2| -compare_words(word1, word2)}
end


def compare_words(word1, word2)
  alpha = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz ".chars
  alphabet_hash = {}

  alpha.each_with_index do |letter, i|
    alphabet_hash[letter] = i
  end
  for i in 0...([word1.length,word2.length].min)
    #if word1 is farther in the alphabet, return false, i.e. word1 > word2
    if alphabet_hash[word1[i]] > alphabet_hash[word2[i]]
      return -1
    #word2 is before in the alphabet, return true, i.e. word2 > word1
    elsif alphabet_hash[word1[i]] < alphabet_hash[word2[i]]
      return 1
    end
  end
  #word1 is longer than word2, word1 > word2
  if word1.length > word2.length
    return -1
  end
  if word1.length < word2.length
    return 1
  end
  return 0
end

  

