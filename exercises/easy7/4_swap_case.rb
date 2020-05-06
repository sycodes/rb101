# Write a method that takes a string as an argument 
# and returns a new string in which every uppercase letter is replaced by its lowercase version, 
# and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# 1. Understand the Problem
# input
#   -string
# output
#   -string where lowercase letters are uppercase, and vice versa
# mental model
#   -split string into array of words
#   -iterate letter of each word
#   -if ("a"-"z").to_a.include?(letter)
#     letter.upcase
#   -etc.

# 3. Data Structure
# input
#   -array
# output
#   -string

# 4. Algorithm
# see mental model

require 'pry'

def swapcase(string)
  arr = string.chars
  new_str = ''

  arr.map do |letter|
    if ("a".."z").to_a.include?(letter)
      letter.upcase!
    else ("A".."Z").to_a.include?(letter)
      letter.downcase!
    end
      new_str << letter
  end
  new_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'