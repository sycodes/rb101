# Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

def reversed_number(numbers)
  numbers_string = numbers.to_s # => now you can access digits through their index
  numbers_arr = []
  reversed_numbers = ''

  0.upto(numbers_string.size - 1) do |indx|
    numbers_arr << numbers_string[indx]
  end

  numbers_arr.reverse_each do |num|
    reversed_numbers << num
  end
  reversed_numbers.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1