# 1. Understand the Problem
# -input
#   3 integers
# -output
#   a symbol
# -rules
#   :equilateral - all 3 sides are of equal length
#   :isosceles - 2 sides are of equal lengths, while the 3rd is different
#   :scalene - all 3 sides are of different length
# all sides must have lengths > 0 && sum of 2 shortest side > length of longest side
# -mental model
#   if all sides pass the two rules, return the appropriate symbol

# 2. Data Structure
# -if else statement

# 3. Algorithm
# write method for triangle
#   call valid_triangle first

#   if array.uniq.count == 1, return :equilateral
#   if array.uniq.count == 2, return :isosceles
#   if array.uniq.count == 3, return :scalene

# write method for valid_triangle
#   return true if valid
#     check if all lengths are > 0
#       iterate each array
#     check if two shortest lengths are longer than 3rd
#       array.sort[0] + array.sort[1] > array.sort[3]
#   return :invalid otherwise

require 'pry'

def triangle(s1, s2, s3)
  array = [s1, s2, s3]

  if valid_triangle?(s1, s2, s3)
    if array.uniq.count == 1
      :equilateral
    elsif array.uniq.count == 2
      :isosceles
    else array.uniq.count == 3
      :scalene
    end
  else
    :invalid
  end
end

def valid_triangle?(s1, s2, s3)
  array_sorted = [s1, s2, s3].sort

  if (array_sorted.none? { |num| num < 0 }) && (array_sorted[0] + array_sorted[1] > array_sorted[2])
    true
  else
    false
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
