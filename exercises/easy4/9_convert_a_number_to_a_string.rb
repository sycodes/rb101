# Write a method that takes a positive integer or zero, 
# and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc.

# 1. Understand the Problem:
# -input
#   integer number
# -output
#   string number
# -rules
#   each integer is its string equivalent
#   e.g., { 0 = "0" }
# -mental model
#   create a hash (e.g., { 0 = "0" })
#   convert number to string

# 2. Examples / Test Cases:
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# 3. Data Structure:
# -input
#   array of integers
# -rules
#   hash

# 4. Algorithm:
# -turn integer into an array of integers
#   array_of_intgers == integer.digits
# -iterate the array_of_integers to find its string equivalent in hash
#  array_of_strings << hash[array_of_integers[n]]
# -join array_of_strings to get a string

#I disregarded the algorithm when I found Integer#digits and Array#reverse.

def integer_to_string(integer)
  integer.digits.reverse.join
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'


