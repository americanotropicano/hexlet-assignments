# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, words)
    normalized_word = word.chars.sort.join
  
    words.filter { |item| item.chars.sort.join == normalized_word }
end

# END
