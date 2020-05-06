# Write a method that takes a single String argument 
# and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# 1. Understand the Problem
# input
#   -string
# output
#   -string with first character of every word capitalized, the rest lowercased
# mental model
#   -split string into array of words
#   -iterate array to capitalize first letter of each word and lowercase the rest

# 3. Data Structure
# input
#   -array of words
# output
#   -string

# 4. Algorithm
# Split string into array of words
# iterate each word
#   -word[0] capitalize
#   -the rest lowercase
# Join array(" ") to return string

def word_cap(string)
  arr = string.split
  new_arr = arr.map do |word|
              word.capitalize
            end
  new_arr.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'