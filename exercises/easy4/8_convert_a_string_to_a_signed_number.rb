# Write a method that takes a String of digits, 
# and returns the appropriate number as an integer. 

# The String may have a leading + or - sign; 
# if the first character is a +, your method should return a positive number; 
# if it is a -, your method should return a negative number. 
# If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
# You may, however, use the string_to_integer method from the previous lesson.

# 1. Understand the Problem:
# -input
#   string
# -output
#   integer
# -rules
#   if number is -, it should return a negative number
#   if number is +, it should return a positive number
# -mental model
#   take string and separate each characters
#   if first element is "-", put a - in front of num
#   if first element is "+", put nothing in front of num

# 2. Examples / Test Cases:
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# 3. Data Structure:
# -input
#   -string
# -rules
#   -array

# 4. Algorithm:
# -create a new method def string_to_signed_integer(string)
#   string_without_sign = string[1..-1]
#   split the string into an array of chars
#     if "+", string_to_integer(string_without_sign)
#     if "-", string_to_integer(string_without_sign) * -1

DIGITS = { 
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
}

def string_to_signed_integer(string)
  string_without_sign = string[1..-1]
  array_string = string.chars

  if array_string[0] == "+"
    string_to_integer(string_without_sign)
  elsif array_string[0] == "-"
    string_to_integer(string_without_sign) * -1
  else
    string_to_integer(string)
  end
end

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

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
