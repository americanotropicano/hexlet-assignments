# frozen_string_literal: true

# rubocop:disable Style/For


# BEGIN
def make_censored(text, stop_words)
  res = []
  mask_word = '$#%!'
  text.split().each do |word|
    if stop_words.any?(word)
      res << mask_word
    else
      res << word
    end
  end
  res.join(' ')
end

  
# END

# rubocop:enable Style/For
