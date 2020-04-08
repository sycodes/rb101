# Write a method that takes an Array of numbers, 
# and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

# 1. Understand the Problem:
# -input
#   -array of integers
# -output
#   -array of integers
#     same number of elements
#     each element is the running total of previous elements
# -mental model
#   -add current element and last element
#     append sum to new array
#     use the same index as current element

# 2. Examples / Test Cases:
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# 3. Data Structure:
# -input
#   -array
# -rules
#   -array

# 4. Algorithm:
# -initialize new_array = []
# -iterate each element in array
#   -new_array.last.to_i + n
#   -append the sum to new_array
# -return new_array

def running_total(array)
  new_array = []

  array.each do |n|
    new_array << new_array.last.to_i + n
  end

  new_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []



