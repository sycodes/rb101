# Write a method named include? that takes an Array and a search value as arguments. 
# This method should return true if the search value is in the array, false if it is not. 
# You may not use the Array#include? method in your solution.

# 1. Understand the Problem
# input
#   -an array and a search value
# ouput
#   -boolean true or false
# mental model
#   -iterate through array
#   -check each element to see if it is equal to search value

# 2. Examples / Test Cases

# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# 3. Data Stucture
# input
#   -array
# mental model
#   -array

# 4. Algorithm
# iterate through array with find
#   -array.find
# return true if the block finds an element == search value

def include?(array, search_value)
  array.each { |element| return true if element == search_value }
    false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false