require "pry"
ESPERANTO_MAP = {
  "a" => 0,
  "b" => 1,
  "c" => 2,
  "ĉ" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "ĝ" => 8,
  "h" => 9,
  "ĥ" => 10,
  "i" => 11,
  "j" => 12,
  "ĵ" => 13,
  "k" => 14,
  "l" => 15,
  "m" => 16,
  "n" => 17,
  "o" => 18,
  "p" => 19,
  "r" => 20,
  "s" => 21,
  "ŝ" => 22,
  "t" => 23,
  "u" => 24,
  "ŭ" => 25,
  "v" => 26,
  "z" => 27,
  " " => 28
}

def swap_sort(phrase_a, phrase_b)
  i = 0
  j = 0
  while (i < phrase_a.length) && (j < phrase_b.length) do
    #binding.pry
    if ESPERANTO_MAP[phrase_a[i]] > ESPERANTO_MAP[phrase_b[j]]
      return [phrase_a, phrase_b]
    elsif ESPERANTO_MAP[phrase_a[i]] < ESPERANTO_MAP[phrase_b[j]]
      return [phrase_b, phrase_a]
    end
    i += 1
    j += 1
  end
  return [phrase_a, phrase_b]
end


def alphabetize(arr)
    #arr.sort{ |phrase_a, phrase_b| (ESPERANTO_MAP[phrase_a[0]] <=> ESPERANTO_MAP[phrase_b[0]])}
    #arr.sort{ |phrase_a, phrase_b| (ESPERANTO_MAP[phrase_a[1]] <=> ESPERANTO_MAP[phrase_b[1]])}
    #arr.sort
  split_phrases = []
  arr.map do |phrase|
    split_phrases << phrase.split("")
    #binding.pry
  end
  split_phrases.map do |each_phrase|
    #binding.pry
    each_phrase.map! do |esperanto_char|
      replacement_char_value = ESPERANTO_MAP[esperanto_char]
      #binding.pry
      if replacement_char_value == nil
        binding.pry
      end
      esperanto_char = replacement_char_value
    end
  end
  binding.pry

  split_phrases.sort!()

  binding.pry

  split_phrases.map do |each_phrase|
    #binding.pry
    each_phrase.map! do |esperanto_char_ord|
      replacement_char_value = ESPERANTO_MAP.invert[esperanto_char_ord]
      #binding.pry
      if replacement_char_value == nil
        binding.pry
      end
      esperanto_char_ord = replacement_char_value
    end
  end
  binding.pry

  split_phrases.map! do |each_phrase|
    each_phrase.join
  end
  binding.pry

  # 10.times do
  #   i = 0
  #   while i < (arr.length() -1) do
  #     move = swap_sort(arr[i], arr[i+1])
  #     arr[i] = move[0]
  #     arr[i+1] = move[1]
  #     i += 1
  #   end
  # end
  # arr

  split_phrases
end
