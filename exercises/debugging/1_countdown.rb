def decrease(counter)
  counter -= 1
end

# The counter parameter of the decrease method is a different variable!
# The counter parameter only lives in the scope of the method.
# counter -= 1 reassigns the variable to 9, but this is only local to the method.
# We also don't use the return value of the method anywhere.
# Therefore, the counter variable outside of the method continues to reference 10.

counter = 10

10.times do
  puts counter
  counter = decrease(counter) # => Reassign the variable counter to the return value of decrease(counter).
end

puts 'LAUNCH!'