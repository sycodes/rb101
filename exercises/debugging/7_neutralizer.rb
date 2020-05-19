def neutralize(sentence)
  words = sentence.split(' ')

  words.reject! do |word|
     negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# Since the each method is iterating over an array while deleting its elements (at the same time),
# it skips over the "boring" word.
# Previously, "boring" was at index two.
# Since the word prior to "boring" was deleted, "boring" got moved up to index 1.
# However, the code is now iterating at index 2, therefore skipping over "boring" to iterate "cards".

# I would fix this by NOT iterating while deleting at the same time.
# Instead, you can choose the select or reject method. 