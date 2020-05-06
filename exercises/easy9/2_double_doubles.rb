# double number:
# -even number of digits
# -left-side exactly the same as right-side

# if it is a double number, return as is
# if not, return 2 times the number

# double number?:
# -is digit count even?
# -if even, is numbers at indexes 0 to (numbers.size/2 -1) == (numbers.size/2 -1) to -1?

require 'pry'

def double_number?(number)
  number_string = number.to_s

  if number_string.size.even? && (number_string[0, number_string.size/2] == number_string[(number_string.size/2), number_string.size])
    true
  else number_string.size.odd?
    false
  end
end

def twice(number)
  if double_number?(number)
    number
  else
    number*2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10