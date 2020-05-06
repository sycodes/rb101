# Write a method that takes a non-empty string argument, 
# and returns the middle character or characters of the argument. 
# If the argument has an odd length, you should return exactly one character. 
# If the argument has an even length, you should return exactly two characters.

# 1. Understand the Problem
# input
#   -string
# output
#   -string of just middle character(s)
# rules
#   -if argument has odd length, return one character
#   -if argument has even length, return two characters
# mental model
#   -for odd length: get indx by (length / 2) + 1
#   -for even length: get both indx by (length / 2), (length / 2) + 1


def center_of(string)
  if string.size.odd?
    string[(string.size / 2)]
  else string.size.even?
    string[(string.size / 2) - 1] + string[(string.size / 2)]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'