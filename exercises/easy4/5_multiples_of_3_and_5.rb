# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
# and then computes the sum of those multiples. 
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# 1. Understand the Problem:
# -input
#   number (integer) > 1
# -output
#   number (integer)
# -rules
#   given a number, find all multiples of 3 and 5
#   add all the multiples of 3 and 5
# -mental model
#   -given a number, search for multiples between 3 and number
#     (number % 3 == 0) and (number % 5 == 0)
#   -add those to empty array
#     add all integers in array

# 2. Examples / Test Cases:
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# 3. Data Structure:
# -input
#   array
# -rules
#   array

# 4. Algorithm:
#   -iterate between 3 and number to find multiples of 3 and 5
#     (number % 3 == 0) and (number % 5 == 0)
#   -append multiples of 3 and 5 to empty array
#     reduce the array to add all elements

def multisum(number)
  multiarray = []

  (3..number).each do |n|
    if (n % 3 == 0) || (n % 5 == 0)
      multiarray << n
    end
  end

  multiarray.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
