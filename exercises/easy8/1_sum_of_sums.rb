# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. 
# You may assume that the Array always contains at least one number.

# add the first element
# add the first + second element
# add the first + second + third element

require 'pry'

def sum_of_sums(array)
  indx_arr = [0]
  sum = 0

  array.each do |num|
    if array.index(num) == 0
      sum += num
    else
      indx_arr << array.index(num)
      indx_arr.each do |indx|
        sum += array[indx]
      end
    end
  end
  sum
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])