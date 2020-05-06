def sequence(number)
  sequence_arr = []
  number_to_add = 0

  loop do
    sequence_arr << (number_to_add += 1)
    break if number_to_add == number
  end

  sequence_arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]