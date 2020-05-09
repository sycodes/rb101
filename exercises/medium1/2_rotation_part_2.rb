# 1. Understand the Problem
# input
#   -two integers (number and digit)
# output
#   -one integer (with digit's number, counting from right to left, rotated to the right)
# mental model
#   -turn number into array of numbers
#   -find digit's number
#   -iterate througn each number

# 3. Data Structure
# input
#   -array

# 4. Algorithm
# -turn number into an array of numbers
#   number.to_s.split('').map(&:to_i)
# -find digit's number to use as index
#   digit = -digit
# -iterate through each number with index
#   -if array.index(number) != indx, push to new array
#   -if array.index(number) == indx, push to num_to_rotate
#   -combine new array + num_to_rotate

require 'pry'

def rotate_rightmost_digits(number, digit)
  num_arr = number.to_s.split('').map(&:to_i)
  indx_to_rotate = -digit
  rotated_arr = []
  num_to_rotate = []

  num_arr.each.with_index do |num, indx|
    if num_arr[indx] == num_arr[indx_to_rotate]
      num_to_rotate << num
    else num_arr[indx] != num_arr[indx_to_rotate]
      rotated_arr << num
    end
  end
  (rotated_arr + num_to_rotate).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
