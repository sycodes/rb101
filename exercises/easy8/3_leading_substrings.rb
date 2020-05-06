# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 
# The return value should be arranged in order from shortest to longest substring.

require 'pry'

def substrings_at_start(string)
  arr_chars = string.chars
  arr_substrings = []

  1.upto(arr_chars.count) do |count|
    arr_substrings << arr_chars.slice(0, count).join
  end
  arr_substrings
end

p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')