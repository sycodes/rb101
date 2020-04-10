# Given a string of words separated by spaces, 
# write a method that takes this string of words
# and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, 
# and that the string will always contain at least one word. 
# You may also assume that each string contains nothing but words and spaces.

# 1. Understand the Problem:
# -input
#   string
# -output
#   string
# -rules
#   first and last letters of each word are swapped
#   every word contains at least one letter
#   string will contain at least one word
#   string only contains words and spaces
# -mental model
#   go through each word, flip the first and last letter

# 2. Examples / Test Cases:
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# 3. Data Structure:
# -input
#   array, string words
# -rules
#   array of an array

# 4. Algorithm:
#   -Split string to return an array of words #['abc', 'def']
#   -Map each word to split each char and return array #[['a', 'b', 'c'], ['d', 'e', 'f']]
#   -Iterate array to swap first and last letter
#     array[0][0], array[0][-1] = array[0][-1], array[0][0]
#   -join array into string

def swap(string)
  array = string.split(/(\W)/)
  nested_array = array.map { |word| word.chars }
  num = nested_array.size
  counter = 0

  num.times do
    nested_array[counter][0], nested_array[counter][-1] = nested_array[counter][-1], nested_array[counter][0]
    counter += 1
  end

  nested_array.join
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'