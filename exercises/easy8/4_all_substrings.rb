require 'pry'

def substrings_at_start(string)
  arr_chars = string.chars
  arr_substrings = []

  1.upto(arr_chars.count) do |count|
    arr_substrings << arr_chars.slice(0, count).join
  end
  arr_substrings
end

#delete first letter of string, call substrings_at_start on it, etc.

def substrings(string)
  arr_all_substrings = substrings_at_start(string)

  loop do
    break if string.size == 0
    string.slice!(0)
    arr_all_substrings << substrings_at_start(string)
  end
  arr_all_substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]