# Write a method that takes a string as an argument, 
# and returns an Array that contains every word from the string, 
# to which you have appended a space and the word length.

# You may assume that words in the string are separated by exactly one space, 
# and that any substring of non-space characters is a word.

# 1. Understand the Problem
# input
#   -string of many words
# output
#   -array of words that are appended a space and the word length
#   e.g. ("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
# mental model
#   -split string into array of words
#   -iterate through words to get size of word
#   -append size to word

# 3. Data Structure
# input
#   -array
# mental model
#   -array

# 4. Algorithm
# split string into array of words
#   -string.split
# iterate each word to get size of word
#   -word.size.to_s
# append it to word
#   -array[indx] << " " + word.size.to_s

def word_lengths(string)
  array_of_words = string.split

  array_of_words.each_with_index do |word, indx|
    array_of_words[indx] << " " + word.size.to_s
  end
  array_of_words
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []