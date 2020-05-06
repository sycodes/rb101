# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# 1. Understand the Problem
# input
#   -integer
# output
#   -stars in a shape of a right triangle
#   -sides have n stars
# mental model
#   -iterate from (1..n)
#   -print n stars
#   -spaces where there are no stars

# 3. Data Structure
# input
#   -integer
# mental model
#   -array of integer stars
#   -array of integer spaces

# 4. Algorithm
# get array (int of stars)
#   -(1..num)
#   -e.g. 5 => [1, 2, 3, 4, 5]
# get array (int of spaces)
#   -(num - 1) => [4, 3, 2, 1, 0]
# print 4 spaces. then print 1 star
# etc.

require 'pry'

def triangle(num)
  int_spaces = [] # => [4, 3, 2, 1, 0]
  int_stars = (1..num).to_a # => [1, 2, 3, 4, 5]
  num = num
  counter = 0

  loop do
    int_spaces << num -= 1
    break if num == 0
  end

  loop do
    puts " " * int_spaces[counter] + "*" * int_stars[counter]
    counter += 1
    break if counter >= int_spaces.count
  end
end

triangle(5)