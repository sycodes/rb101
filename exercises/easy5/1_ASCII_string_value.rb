# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)

# 1. Understand the Problem:
# -input
#   string of alphabets
# -output
#   sum of all ASCII values (integer)
# -rules
#   input a string
#   return the sum of all ASCII values
# -mental model
#   call the String#ord method on each string character
#   add them up

# 2. Examples / Test Cases:
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# 3. Data Structure:
# -input
#   array of string chars
# -rules
#   array of integers 

# 4. Algorithm:
# -create empty array 
#   array_of_ASCII_values = []
# -use String#chars to split a string into chars and return an array
#   array_of_chars = string.chars
# -iterate array_of_chars to get the ASCII value of each chars
#   array_of_ASCII_values << ASCII value
# -add all elements in array
#   array_of_ASCII_values.reduce(:+)

def ascii_value(string)
  return 0 if string == ""

  array_of_ASCII_values = []
  array_of_chars = string.chars

  array_of_chars.each do |n|
    array_of_ASCII_values << n.ord
  end

  array_of_ASCII_values.reduce(:+)
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
