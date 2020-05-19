def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# Stack overflow happens due to infinite recursions. 
# move(2 - 1, ..., ...) = 1
# move(1 - 1, ..., ...) = 0
# move(0 - 1, ..., ...) = -1
# and etc.
# To prevent this, make sure there is an exit path:
# return if n == 0

# LS: In order to know where it needs to return to after finishing each of these calls, Ruby puts each call on a call stack. 
# Since we never stop, this stack keeps growing and growing, until it exceeds its limit. 
# Ruby breaks the loop once it reaches its maximum stack level depth.
# This is the cause of the SystemStackError - a real stack overflow!