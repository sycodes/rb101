# Write a method that takes a string, and returns a new string in which every character is doubled.

# 1. Understand the Problem
# input
#   -string
# output
#   -string where every char is doubled
# mental model
#   -initialize empty string
#   -split string into chars
#   -iterate through chars, append empty string with chars * 2

def repeater(string)
  repeater_arr = ''
  chars_arr = string.chars

  chars_arr.each do |char|
    repeater_arr << char * 2
  end
  repeater_arr
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''