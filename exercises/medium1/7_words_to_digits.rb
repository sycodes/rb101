# Write a method that takes a sentence string as input, 
# and returns the same string with any sequence of the words: 
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# 1. Understand the Problem
# -input
#   -string with any words
#   'Please call me at five five five one two three four. Thanks.'
# -output
#   -string with integers
#   'Please call me at 5 5 5 1 2 3 4. Thanks.'
# -mental model
#   -iterate each word
#     if word has an integer equivalent, replace it with integer

# 3. Data Structure
# -input, string
# -mental model, array

# 4. Algorithm
# -initialize hash of numbers {"one" => 1}
# -iterate each word
#     -if word exists in hash.keys
#     -replace string with key's values

NUMBERS = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}

def word_to_digit(words)
  NUMBERS.keys.each do |word|
    words.gsub!(/\b#{word}\b/, NUMBERS[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'