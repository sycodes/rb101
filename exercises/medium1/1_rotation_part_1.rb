# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# 1. Understand the Problem
# input
#   -array of numbers
# output
#   -array of numbers, with the first number moved to the end of array
#   [7, 3, 5, 2, 9, 1] == [3, 5, 2, 9, 1, 7]
# rules
#   -do not modify the original array
# mental model
#   -iterate through each number
#   -if number has index 0, move it to the end of array

# 2. Examples / Test Cases
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

# 3. Data Structure
# input
#   -array
# mental model
#   -array

# 4. Algorithm
# iterate through each numbers in array (map.with_index)
#   -if index is 0, add number the array
#   -if index is not 0, prepend number to the array

require 'pry'

def rotate_array(array)
  rotated_array = []
  first_element = []

  array.each_with_index do |element, indx|
    if indx == 0
      first_element << element
    else indx != 0
      rotated_array << element
    end
  end
  total = rotated_array + first_element
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true