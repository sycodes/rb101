# Write a method that takes two strings as arguments, 
# determines the longest of the two strings, 
# and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# E.g.
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# 1. Understand the Problem:
# -input:
#   -two strings: 1 longer, 1 shorter
# -output:
#   -one concatenated string: short, long, short

# 2. Examples / Test Cases:
# -What if both strings are empty?
# -What if both strings are the same length?

# 3. Data Structure:
# -input:
#   -string

# 4. Algorithm:
# -use String#length on both string arguments to count the number of chars
# -use a conditional to concatenate the string:
#   -short + long + short

def short_long_short(s1, s2)
  if s1.length < s2.length
    s1 + s2 + s1
  else s2.length < s1.length
    s2 + s1 + s2
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"