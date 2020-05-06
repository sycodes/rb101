# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition,
# and each subsequent number is the sum of the two previous numbers.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. 
# (The first Fibonacci number has index 1.)

# 1. Understand the Problem
# input
#   -number of digits that first appears in Fibonacci
# output
#   -index of that number
# rules
#   -Fibonacci's first 2 numbers are 1
#   -each subsequent number is the sum of the two previous numbers
#   -the first Fibonacci number has index 1
# mental model
#   -calculate the Fibonacci number
#   -stop once it hits the number of digit
#   -return index

# 3. Data Structure
# input
#   -integer
# rules
#   -array

# 4. Algorithm
# array = [1, 1]
# num1 = 0
# num2 = 1

# calculate Fibonacci series and push to array
#   array << array[num1] + array[num2]
#   num1 += 1
#   num2 += 1
# check if the number has number of digits we're seeking
#   array[-1].to_s.size == digit
# if it is, return the index + 1 of that number
#   array.index(array[-1]) + 1

def find_fibonacci_index_by_length(digit)
  fibonacci = [1, 1]
  indx = ''
  num1 = 0
  num2 = 1

  loop do
    fibonacci << fibonacci[num1] + fibonacci[num2]
    num1 += 1
    num2 += 1

    if fibonacci[-1].to_s.size == digit
      indx << (fibonacci.index(fibonacci[-1]) + 1).to_s
      break
    end
  end
  indx.to_i
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

