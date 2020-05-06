# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, 
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
# If one or more non-alphabetic characters occur in a row, 
# you should only have one space in the result (the result should never have consecutive spaces).

# 1. Understand the Problem
# input
#   -string with lowercased words and non-alphabetic characters
# output
#   -string with non-alphabetic characters replaced by one space
# rules
#   -alphabetic characters ("a".."z"): leave alone
#   -non-alphabetic characters ("a".."z"): replace with one space
#   -one or more non-alphabetic characters ("a".."z") occur in a row: replace with one space

# 2. Examples / Test Cases
# cleanup("---what's my +*& line?") == ' what s my line '

# 3. Data Structure
# input
#   string.split # => ["---what's", "my", "+*&", "line?"]
# rules
#   range ('a'..'z').include?

# 4. Algorithm
# new_sentence = ''
# iterate through each character
#   if alphabetic character
#     add it to new_sentence
#   if non-alphabetic character
#     otherwise add " " to new_sentence
# 

def cleanup(string)
  new_sentence = ''

  string.chars.each do |chars|
    if ('a'..'z').include?(chars)
      new_sentence << chars
    else
      new_sentence << " "
    end
  end
  new_sentence.squeeze(" ")
end

cleanup("---what's my +*& line?")