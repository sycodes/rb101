# def fibonacci(number)
#   if number < 2
#     number
#   else
#     fibonacci(number - 1) + fibonacci(number - 2)
#   end
# end

require 'pry'

def fibonacci(number)
  fib_arr = [1, 1]

  loop do
    break if fib_arr.size == number
    fib_arr << fib_arr[-1] + fib_arr[-2]
  end
  fib_arr.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075