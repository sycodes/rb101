# Write a method that takes an Array as an argument, 
# and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. 
# If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# get array.count - 1 for indexes
# if index is less than half of array.count - 1
#   push element to first array
# if index is more than half of array.count -1
#   push element to second array

def halvsies(array)
  final_array = []
  array1 = []
  array2 = []
  indx = 0

  array.count.times do
    if array.count.even? && indx <= ((array.count/2) - 1)
      array1 << array[indx]
      indx += 1
    elsif array.count.even? && indx > ((array.count/2) -1)
      array2 << array[indx]
      indx += 1
    elsif array.count.odd? && indx <= (array.count/2)
      array1 << array[indx]
      indx += 1
    else array.count.odd? && indx <= (array.count/2)
      array2 << array[indx]
      indx += 1
    end
  end
  final_array << array1
  final_array << array2
end



p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]