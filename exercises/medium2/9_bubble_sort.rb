# 1. Understand the Problem
# input
#   -an array of integers OR words
# output
#   -an array sorted smallest to largest
# rules
#   -pass through array
#   -each pair of consecutive elements are compared
#   -if the first > second, swap
#   -repeat until you can complete a pass without performing swaps
#   -the array pass as an argument is MUTATED

# 2. Algorithm
# -next if element1 < element 2
# -otherwise, swap
#    element1, element2 = element2, element1
#   swapped = true
# -if no elements are swapped in a pass, swapped = false

require 'pry'

def bubble_sort!(array)

  loop do
    swapped = false

    0.upto(array.size - 2) do |indx|
      next if array[indx] <= array[indx + 1]
      array[indx], array[indx + 1] = array[indx + 1], array[indx]
      swapped = true
    end
    
    break if swapped == false
  end
  array
end

p bubble_sort!([5, 3])
p bubble_sort!([6, 2, 7, 1, 4])
p bubble_sort!(%w(Alice Bonnie Kim Pete Rachel Sue Tyler))