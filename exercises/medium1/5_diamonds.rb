# Write a method that displays a 4-pointed diamond in an n x n grid, 
# where n is an odd integer that is supplied as an argument to the method. 
# You may assume that the argument will always be an odd integer.

# 1. Understand the Problem
# input
#   -odd integer, n
# output
#   -4-pointed diamond
# mental model (e.g., 5)
#   -print n "*"s
#        -1, 3, 5, 3, 1
#   -prepend & append with spaces
#        -2, 1, 0, 1, 2

# 2. Data Structure
# input-number
# mental model-array

# 3. Algorithm
# get array of "*" numbers: [1, 3, 5, 3, 1]
#   -start with 1, add 2 until n
#   -subtract 2 until 1
# get array of " " numbers: [2, 1, 0, 1, 2]
#   -start with (n - 1) / 2
#   -subtract 1 until 0
#   -add 1 until back to start num
# print diamond
#   -iterate both arrays
#   -print spaces[0] spaces, print stars[0], print spaces[0] again

require 'pry'

def star_arr(number)
  star_arr = [1]

  loop do
    break if star_arr.last == number
    star_arr << star_arr.last + 2
  end

  loop do
    break if star_arr.last == star_arr.first
    star_arr << star_arr.last - 2
  end
  star_arr
end

def space_arr(number)
  space_arr = []
  space_arr << (number - 1) / 2

  loop do
    break if space_arr.last == 0
    space_arr << space_arr.last - 1
  end

  loop do
    break if space_arr.last == space_arr.first
    space_arr << space_arr.last + 1
  end
  space_arr
end

def diamond(number)
  space_arr = space_arr(number)
  star_arr = star_arr(number)

  space_arr.each_with_index do |space, indx|
    puts ' ' * space + '*' * star_arr[indx] + ' ' * space
  end
end

diamond(1)
diamond(3)
diamond(9)