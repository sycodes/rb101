# Write a method that returns a list of all substrings of a string that are palindromic. 
# That is, each substring must consist of the same sequence of characters forwards as it does backwards. 
# The return value should be arranged in the same sequence as the substrings appear in the string. 
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; 
# that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. 
# In addition, assume that single characters are not palindromes.

# 1. Understand the Problem
# input
#   -string
# output
#   -array of palindromic substrings
# rules
#   -palindromes: same sequence of characters forwards and backwards
#       *palindromes are case sensitive
#       *singe characters are not palindromes
#   -return value 
#       *arranged in the same sequence as the substrings appear in the string
#       *duplicate palindromes should be included multiple times
# mental model
#   -call the substrings method on string to return an array of all substrings
#   -go through each element to check if it is a palindromic substring

# 3. Data Structure
# input
#   -array of palindromic substrings
# rules
#   -store palindromic substrings in array

# 4. Algorithm
# palindromic_arr = []
# -substrings_arr = call the substrings method on string to return an array of all substrings
# -go through each element to check if it is a palindromic substring
#   Check if element is bigger than 1 and is a palindromic substring:
#   substring.size > 1 && string == string.reverse
#   if it is, append it to palindromic_arr

require 'pry'

def substrings_at_start(string)
  arr_chars = string.chars
  arr_substrings = []

  1.upto(arr_chars.count) do |count|
    arr_substrings << arr_chars.slice(0, count).join
  end
  arr_substrings
end

def substrings(string)
  arr_all_substrings = substrings_at_start(string)

  loop do
    break if string.size == 0
    string.slice!(0)
    arr_all_substrings << substrings_at_start(string)
  end
  arr_all_substrings.flatten
end

def palindromes(string)
  substrings_arr = substrings(string)
  palindromic_arr = []

  substrings_arr.each do |substring| 
    if substring.size > 1 && substring == substring.reverse
      palindromic_arr << substring
    end
  end
  palindromic_arr
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
