# Write a method that combines two Arrays passed in as arguments, 
# and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# 1. Understand the Problem
# input
#   -two arrays
# output
#   -one array with elements from both arrays, with the elements taken in alternation
# mental model
#   -take 1st element from first array & insert in main array
#   -take 1st element from second array & insert in main array
#   ...

# 3. Data Structure
# input
#   -array
# mental model
#   -array

# 4. Algorithm
# counter = 0
# loop do
# push array1[counter] to main_array
# push array2[counter] to main _array
# break if counter >= array1.count
# end

def interleave(arr1, arr2)
  counter = 0
  main_arr = []
  loop do
    main_arr << arr1[counter]
    main_arr << arr2[counter]
    counter += 1
    break if counter >= arr1.count
  end
  main_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c'])