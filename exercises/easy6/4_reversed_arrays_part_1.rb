# Write a method that takes an Array as an argument,
# and reverses its elements in place; that is, mutate the Array passed into this method. 
# The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# 1. Understand the Problem
# input
#   -array
# output
#   -array with its elements reversed
# rules
#   -the array passed and return value is the same array object
# mental model
#   -append array with its last element
#   -delete last element

# 3. Data Structure
# input
#   -array
# output
#   -array

# 4. Algorithm
# swap two elements by index
# array[0], array[3] = array[3], array[0]

# if array.count.even?
# (array.count / 2).times
# 0 -1
# 1 -2

# if array.count.odd?
# index
# 0 -1
# 1 -2
# 2 -3
# break if index is the same

require 'pry'

def reverse!(array)
index_left = 0
index_right = -1

  if array.count.even?
    (array.count / 2).times do
      array[index_left], array[index_right] = array[index_right], array[index_left]
      index_left += 1
      index_right -= 1
    end
  else array.count.odd?
    loop do
      array[index_left], array[index_right] = array[index_right], array[index_left]
      break if array[index_left] == array[index_right]
      index_left += 1
      index_right -= 1
    end
  end
  array
end

