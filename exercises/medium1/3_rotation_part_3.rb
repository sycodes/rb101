# 1. Understand the Problem
# input
#   -number
# output
#   -number
# rules
#   -rotate number to the left
#   735291 = 352917
#   -keep first digit fixed in place, rotate the remaining digits
#   352917 = 329175
#   -keep first 2 digits fixed in place, rotate the remaining digits
#   329175 = 321759
#   -keep first 3 digits fixed in place, rotate the remaining digits
#   321759 = 321597
#   -keep first 4 digits fixed in place, rotate the last two digits
#   321597 = 321579
# mental model
#   -rotate number to the left first
#   -keep first digit fixed, rotate the rest
#   -repeat step 2 for the rest

# 4. Algorithm
# -rotate number to the left first
#   call rotate_rightmost_digits on number
#     rotate_rightmost_digits(number, 0)
# -keep first digit fixed, rotate the rest
#   rotate_rightmost_digits(array[1..-1], 0)

require 'pry'

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  start_index = number.to_s.size # => 6

  (number.to_s.size).times do
    number = rotate_rightmost_digits(number, start_index)
    start_index -= 1
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
