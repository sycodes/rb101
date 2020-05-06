# Create a method that takes two integers as arguments. 
# The first argument is a count, and the second is the first number of a sequence that your method will create. 
# The method should return an Array that contains the same number of elements as the count argument, 
# while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, 
# while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# 1. Understand the Problem
# input
#   -two integers: 1st is the count, 2nd is the first number of a sequence
# output
#   -an array: size is the same as the count argument, values of each element will be multiples of starting number
# mental model
#   -use count to multiply sequence number

# 3. Data Structure
# input
#   -two integers
# mental model
#   -array

# 4. Algorithm
# Get array of count numbers 
#   -(1..count).to_a
# Iterate through array of count numbers
#   -multiply each element with the sequence number
#   -map will return a new array of transformed elements

def sequence(count, sequence)
  arr_count = (1..count).to_a

  arr_count.map do |num|
    num * sequence
  end
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []