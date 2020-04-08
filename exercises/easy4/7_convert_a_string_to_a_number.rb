# Write a method that takes a String of digits, 
# and returns the appropriate number as an integer.

# For now, do not worry about leading + or - signs, 
# nor should you worry about invalid characters; 
# assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc.

# 1. Understand the Problem:
# -input
#   string
# -output
#   integer
# -rules
#   use a hash to store integer equivalent
#   e.g. { "0" => 0 }
# -mental model
#   take string and separate each characters
#   compare each character to hash key to get the integer value

# 2. Examples / Test Cases:
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# 3. Data Structure:
# -input
#   -string
# -rules
#   -hash

# 4. Algorithm:
# -initialize a hash
#   e.g. { "0" => 0 }
# -initialize array_integer = []
# -initialize counter = 0

# -array_string = String#chars to return an array of string chars

# -loop
#   -hash[array_string[counter]] to access value
#   -append value to array_integer
#   -counter += 1
#   -break if array_integer.length == array_string.length

# -join array_integer with .inject method

DIGITS = { 
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, 
}

def string_to_integer(string)
  array_integer = []
  array_string = string.chars
  counter = 0

  loop do
    array_integer << DIGITS[array_string[counter]]
    break if array_integer.length == array_string.length
    counter += 1
  end

  array_integer.inject { |sum, num| sum * 10 + num }
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
