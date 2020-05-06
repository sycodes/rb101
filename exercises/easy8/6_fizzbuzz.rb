# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
# Print out all numbers between the two numbers, 
# except if a number is divisible by 3, print "Fizz", 
# if a number is divisible by 5, print "Buzz", and
# finally if a number is divisible by 3 and 5, print "FizzBuzz".

# 1. Understand the Problem
# input
#   -two integers, one is starting number, second is ending number
# output
#   -print all numbers between the two numbers except:
#     print "Fizz" if the number is divisible by 3
#     print "Buzz" if the number is divisible by 5
#     print "FizzBuzz" if the number is divisible by both
# mental model
#   -iterate thorugh numbers
#   -if number divisible by 3, print "Fizz", etc.

# 3. Data Structure
# input
#   -array of numbers

# 4. Algorithm
# -arr_num = [1, 2, 3...]
# -iterate through arr_num to see if each num is divisible by 3, 5, or both
#   *print num based on rules


def fizzbuzz(num1, num2)
  arr_num = (num1..num2).to_a

  arr_num.each_with_index do |num, indx|
    arr_num[indx] = fizzbuzz_value(num)
  end
  arr_num.join(", ")
end

def fizzbuzz_value(num)
  if (num % 3 == 0) && (num % 5 == 0)
    "FizzBuzz"
  elsif num % 3 == 0
    "Fizz"
  elsif num % 5 == 0
    "Buzz"
  else
    num
  end
end

p fizzbuzz(1, 15)