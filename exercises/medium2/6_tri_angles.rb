# 1. Understand the Problem
# input
#   -3 integers
# output
#   -a symbol
# rules
#   -right -- one angle of the triangle is 90
#   -acute -- all 3 angles of the triangle are less than 90
#   -obtuse -- one angle is greater than 90
#   -valid -- sum of all angles is 180 && all angles must be > 0

# 2. Algorithm
# write valid_triangle method def
#   array.reduce(:+) == 180
#   array.none? { |num| num < 0 }
# write triangle method def
#   if array.count(90) == 1
#     right
#   elsif array.none? { |num| num > 90 }
#     acute
#   else array.select { |num| num > 90 }
#     obtuse

require 'pry'

def valid_triangle?(a1, a2, a3)
  array = [a1, a2, a3]

  if array.reduce(:+) == 180 && array.none? { |num| num <= 0 }
    true
  else
    false
  end
end

def triangle(a1, a2, a3)
  array = [a1, a2, a3]

  if valid_triangle?(a1, a2, a3)
    if array.count(90) == 1
      :right
    elsif array.none? { |num| num > 90 }
      :acute
    else array.select { |num| num > 90 } == 1
      :obtuse
    end
  else
    :invalid
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid