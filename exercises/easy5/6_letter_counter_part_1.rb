# Write a method that takes a string with one or more space separated words 
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# 1. Understand the Problem
# input
#   -string with one or more space separated words
# output
#   -hash that shows the number of words of different sizes
# rules
#   -words consist of any string of characters that are not spaces
#   e.g. seven. is one word with 6 characters
#   e.g. seven is one word with 5 characters
# mental model

# 2. Examples / Test Cases
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# 3. Data Structure
# input
#   -array of words
#   -'Four score and seven.' = ["Four", "score", "and", "seven."]
# rules
#   -hash
#   -different sizes (key) => number of words (value)

# 4. Algorithm
# hash = {}
# iterate array of words
# count each word's character
#   if key doesn't exist yet, add it with value 1
#   if it does, += 1 to its value

def word_sizes(string)
  size_count = {}
  words = string.split

  words.each do |word|
    if size_count.key?(word.size)
      size_count[word.size] += 1
    else
      size_count[word.size] = 1
    end
  end
  size_count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}