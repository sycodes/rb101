# 1. Understand the Problem
# input
#   -an integer
# output
#   -an integer that is a featured number greater than the input
# rules
#   a featured number is:
#     - an odd number
#     - a multiple of 7
#     - digits occur exactly once each
# mental model
#   -start with 0 and keep adding 7 to it 
#   -once it meets the above conditions, return the number

# 2. Algorithm
# -initialize featured_number = 0
# -continue to add 7 to it
# -break if 
#   featured_number > input 
#   all digits are different
#   if featured_number.to_s.size == featured_number.to_s.split('').uniq.count

require 'pry'

def featured(number)
  featured_number = 7

  loop do
    break if number >= 9_876_543_210

    featured_number += 14
    if featured_number > number && (featured_number.to_s.size == featured_number.to_s.split('').uniq.count)
      return featured_number
    end
  end

  'There is no possible number that fulfills those requirements.'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)