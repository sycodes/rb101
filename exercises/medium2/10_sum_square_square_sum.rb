def sum_square_difference(number)
  array_num = (1..number).to_a
  first_num = array_num.reduce(:+)
  second_num = array_num.map { |num| num ** 2 }

  (first_num)**2 - second_num.reduce(:+)
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150