# Write a method that takes two Array arguments in which each Array contains a list of numbers, 
# and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. 
# The results should be sorted by increasing value.

#for each element in smaller_arr
#multiply with all elements in larger_arr

require 'pry'

def multiply_all_pairs(arr1, arr2)
  indx = 0
  multiplied_arr = []
  smaller_arr = if arr1.count > arr2.count
                  arr2
                else
                  arr1
                end
  larger_arr = if arr1.count > arr2.count
                  arr1
                else
                  arr2
                end

  loop do
    larger_arr.each do |num|
      multiplied_arr << num * smaller_arr[indx]
    end
    break if indx >= smaller_arr.count - 1
    indx += 1
  end
  multiplied_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]