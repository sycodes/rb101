# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. 
# Do not modify the original list.

# 1. Understand the Problem
# input
#   -array 
# output
#   -new array
# rules
#   -return a new array with elements in reverse order
#   -do not modify the original array
# mental model
#   -map through array
#   -take the first element and swap with the last
#   -break if left_index and right_index is the same

# 3. Data Structure
# input
#   -array
# rules
#   -array

# 4. Algorithm
# iterate through array
#    -prepend element to new array

def reverse(array)
  new_array = []

  array.each do |num|
    new_array.unshift(num)
  end
  new_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

