# Write a method that takes an Array of integers as input, 
# multiplies all the numbers together, 
# divides the result by the number of entries in the Array, 
# and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

require 'pry'

def show_multiplicative_average(array)
  multiplied = 0.0
  divide_by = array.count

  array.each do |num|
    if num == array[0]
      multiplied = multiplied + num # => 3.0
    else
      multiplied = multiplied * num
    end
  end
  "The result is #{sprintf('%.3f', multiplied/divide_by)}"
end

p show_multiplicative_average([3, 5])
p show_multiplicative_average([6])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])