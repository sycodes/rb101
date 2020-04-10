# In the previous exercise, you developed a method that converts non-negative numbers to strings. 
# In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, 
# and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. 
# You may, however, use integer_to_string from the previous exercise.

# 1. Understand the Problem:
# -input
#   integer number
# -output
#   string number
# -rules
#   if integer has -, return a string prepended with "-"
#   if integer doesn't have -, return a string prepended with "+"
#   if integer is 0, return "0"
# -mental model
#   check if first number of integer is -, number, or 0
#   return string prepended with -, +, or nothing

# 2. Examples / Test Cases:
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# 3. Data Structure:
# -input
#   array of integer
# -rules
#   logic/code

# 4. Algorithm:
# -if integer > 0
#   integer_to_string(integer).prepend("+")
# -if integer < 0
#   integer_to_string(integer).prepend("-")
# -if integer == 0
#   integer_to_string(integer)

def signed_integer_to_string(integer)
  if integer > 0
    integer_to_string(integer).prepend("+")
  elsif integer < 0
    integer = integer * -1
    integer_to_string(integer).prepend("-")
  else integer == 0
    integer_to_string(integer)
  end
end

def integer_to_string(integer)
  integer.digits.reverse.join
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
