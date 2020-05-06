# Write a method that takes a string argument
# and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. 
# You may not use String#squeeze or String#squeeze!.

# 1. Understand the Problem
# input
#   -string
# output
#   -string
# rules
#   -duplicate characters collapse into 1 character

# 2. Examples / Test Cases
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# 3. Data Structure
# input
#   -string
# rules
#   -string

# 4. Algorithm
# array = string.chars
#   -iterate through characters
#   -if the last element in array is the same character, skip
#   -if not, add to new array
require 'pry'

def crunch(string)
  duplicate_array = string.chars
  collapse_array = []

  duplicate_array.each do |char|
    collapse_array << char unless collapse_array[-1] == char
  end
collapse_array.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''