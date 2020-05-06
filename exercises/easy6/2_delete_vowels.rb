# Write a method that takes an array of strings,
# and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# 1. Understand the Problem
# input
#   -array of strings
# output
#   -array of strings with vowels removed
# rules
#   -lowercased and uppercased vowels are removed
#   (a, e, i, o u) && (A, E, I, O, I)
# mental model
#   -iterate each string
#   -check to see if it has vowels
#   -if so, delete

# 2. Examples / Test Cases
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# 3. Data Structure
# input
#   -array of strings
# rules
#   -String#delete

# 4. Algorithm
# iterate each string word
# word.delete "aeiou"

def remove_vowels(array)
  array.map do |string|
    string.delete "aeiouAEIOU"
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']